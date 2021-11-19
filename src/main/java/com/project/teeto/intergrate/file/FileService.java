package com.project.teeto.intergrate.file;

import com.project.teeto.intergrate.file.mapper.FileMapper;
import com.project.teeto.intergrate.file.model.TeetoFile;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;

import static java.time.format.DateTimeFormatter.ofPattern;
import static org.apache.commons.io.FilenameUtils.*;

@Slf4j
@Service
public class FileService {

    @Autowired
    FileMapper fileMapper;

    /**
     * 파일 DB저장
     * @param file
     * @param groupPath
     * @param groupCd
     * @return
     */
    @Transactional
    public Integer insert(MultipartFile file, String groupPath, String groupCd) {
        Integer fileSeqno = null;

        try {
            if (file != null) {
                String path = saveMultipartFile(file, groupPath);
                TeetoFile teetoFile = TeetoFile.builder()
                        .groupCd(groupCd)
                        .fileNm(file.getOriginalFilename())
                        .extension(getExtension(file.getOriginalFilename()))
                        .path(StringUtils.cleanPath(path))
                        .size(file.getSize()).build();
                fileMapper.insert(teetoFile);
                fileSeqno = teetoFile.getSeqno();
            }
        } catch(IOException e) {
            log.error("IOException", e);
        }

        return fileSeqno;
    }


    /**
     * 파일 삭제
     * @param seqno
     */
    @Transactional
    public void delete(Integer seqno) {
        if(seqno != null) {
            String path = fileMapper.getPath(seqno);
            File file = new File(path);
            if(file.exists()) {
                if(file.delete()) {
                    System.out.println(String.format("[FILE DELETED] name : %s", file.getName()));
                } else {
                    System.out.println(String.format("[FAILED TO DELETE FILE] name : %s", file.getName()));
                }
            } else {
                System.out.println("[FAILED TO DELETE FILE] file is not exist");
            }
            fileMapper.delete(seqno);
        } else {
            log.info("[FAILED TO DELETE FILE] file seqno is not exist");
        }
    }


    /**
     * 디렉토리 경로에 파일이름 저장 후 파일 경로 반환
     * @param file
     * @param directoryPath
     * @return
     * @throws IOException
     */
    public static String saveMultipartFile(MultipartFile file, String directoryPath) throws IOException {
        //parent directory
        Path directory = Paths.get(directoryPath).toAbsolutePath()
                .resolve(LocalDateTime.now().format(ofPattern("yyyyMM"))).normalize();

        //해당경로까지 디렉토리를 모두 만듦
        Files.createDirectories(directory);

        //디렉토리에 저장할 파일이름+시분초+확장자
        String fileNameWithTime = getBaseName(file.getOriginalFilename()) +
                LocalDateTime.now().format(ofPattern("_HHmmssSSS")) +
                EXTENSION_SEPARATOR +
                getExtension(file.getOriginalFilename());

        //파일명을 바르게 수정
        String fileName = StringUtils.cleanPath(fileNameWithTime);

        //파일명에 '..' 문자가 들어가 있다면 오류를 발생하고 아니라면 진행(해킹 및 오류방지)
        Assert.state(!fileName.contains(".."), "Name of file cannot contain '..'");

        //파일을 저장할 경로를 path 객체로 받음
        Path targetPath = directory.resolve(fileName).normalize();
        log.info(String.format("[SAVE FILE] path : %s", targetPath.toString()));

        //파일이 이미 존재하는지 확인하여 존재한다면 오류 발생, 없으면 저장
        Assert.state(!Files.exists(targetPath), fileName + " File alerdy exists.");
        file.transferTo(targetPath);

        return targetPath.toString();
    }
}
