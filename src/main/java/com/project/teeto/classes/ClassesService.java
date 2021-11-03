package com.project.teeto.classes;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.mapper.ClassesMapper;
import com.project.teeto.file.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.teeto.classes.model.Classes;
import org.springframework.web.multipart.MultipartFile;
import static com.project.teeto.constant.AppConstant.CLASS_FILE_PATH;
import static com.project.teeto.constant.AppConstant.CLASS_FILE_GROUP_CD;

import java.util.List;

import static com.project.teeto.constant.AppConstant.*;


@Service
public class ClassesService {

    @Autowired
    ClassesMapper classesMapper;

    @Autowired
    FileService fileService;

    /**
     * 클래스 등록
     * @param classes
     * @param auth
     * @return
     */
    public boolean insert(Classes classes, Auth auth) {
        boolean result = false;
        String classId = "";
        List<Classes> classesProcessList = null;
        List<Classes> classesDetailList = null;

        try {
            classId = classesMapper.selClassId();
            classes.setClassId(classId);
            classes.setMentoId(auth.getMentoId());
            classesProcessList = classes.getClassesProcessList();
            classesDetailList = classes.getClassesDetailList();
            if(classes.getClassFile() != null) {
                classes.setClassFileSeqno(insertImage(classes.getClassFile()));
            }

            //클래스 기본
            classesMapper.insertClass(classes);
            //클래스 프로세스
            for(Classes cl : classesProcessList) {
                cl.setClassId(classes.getClassId());
                classesMapper.insertClassProcess(cl);
            }
            //클래스 상세
            for(Classes cl : classesDetailList) {
                cl.setClassId(classes.getClassId());
                cl.setClassDetailFileSeqno(insertImage(cl.getClassDetailFile()));
                classesMapper.insertClassDetail(cl);
            }
            result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 클래스 수정
     * @param classes
     * @return
     */
    public boolean update(Classes classes){
        boolean result = false;
        List<Classes> classesProcessList = null;
        List<Classes> classesDetailList = null;

        try {
            classesProcessList = classes.getClassesProcessList();
            classesDetailList = classes.getClassesDetailList();

            //클래스 상세
            if(classesDetailList != null){
                for(Classes cl : classesDetailList) {
                    cl.setClassId(classes.getClassId());

                    //삭제 여부 Y일시
                    if(cl.getClassDetailDeleteYn().equals("Y")) {
                        classesMapper.deleteDetail(cl);
                    }
                    if(cl.getClassDetailSeqno() != null) {
                        if(cl.getClassDetailFile() != null) {
                            cl.setClassFileSeqno(updateImage(cl.getClassDetailFile(),cl.getClassFileSeqno()));
                        }
                        classesMapper.updateClassDetail(cl);
                    }else {
                        cl.setClassFileSeqno(insertImage(cl.getClassDetailFile()));
                        classesMapper.insertClassDetail(cl);
                    }
                }
            }

            //클래스 프로세스
            if(classesProcessList != null){
                for(Classes cl : classesProcessList) {
                    cl.setClassId(classes.getClassId());

                    //삭제 여부 Y일시
                    if(cl.getClassProcessDeleteYn().equals("Y")){
                        classesMapper.deleteProcess(cl);
                    }
                    if(cl.getClassProcessSeqno() != null) {
                        classesMapper.updateClassProcess(cl);
                    }else {
                        classesMapper.insertClassProcess(cl);
                    }
                }
            }

            //클래스 기본
            classesMapper.updateClass(classes);

            result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 클래스 삭제
     * @param classes
     * @return
     */
    public boolean delete(Classes classes){
        boolean result = false;
        List<Classes> detailList = null;
        Classes detail = null;

        try {
            detailList = classesMapper.getDetailList(classes.getClassId());
            detail = classesMapper.getInfo(classes.getClassId());

            for(Classes c : detailList) {
                fileService.delete(c.getClassDetailFileSeqno());
                classesMapper.deleteDetail(classes);
            }
            if(detail.getClassFileSeqno() != null) {
                fileService.delete(classes.getClassFileSeqno());
            }
            classesMapper.deleteProcess(classes);
            classesMapper.delete(classes);

            //멘티 찜 클래스 목록 삭제
            classesMapper.deleteMteLike(classes);
            //TODO 멘티클래스,결제정보, 급여정보도 삭제???
            result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 클래스 상세
     * @param classId
     * @return
     */
    public Classes classDetail(String classId){
        Classes classes = null;
        List<Classes> detailList = null;
        List<Classes> processList = null;

        try {
            classes = classesMapper.getInfo(classId);
            detailList = classesMapper.getDetailList(classId);
            processList = classesMapper.getProcessList(classId);
            classes.setClassesDetailList(detailList);
            classes.setClassesProcessList(processList);
        }catch (Exception e) {
            e.printStackTrace();
        }

        return classes;
    }

    /**
     * 클래스 목록(검색)
     * @param classes
     * @param auth
     * @return
     */
    public List<Classes> getList(Classes classes, Auth auth){
        List<Classes> list = null;
        String classSearchCd = classes.getClassesSearchTpCd();

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTEE)){
            classes.setMenteeId(auth.getMenteeId());
        }

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTO)){
            classes.setMentoId(auth.getMentoId());

        }

        if(classSearchCd.equals(CLASS_SEARCH_TP_CD_DATE)){
            if(classes.getSearchEndDate() == null || classes.getSearchEndDate().equals("")){
                classes.setSearchEndDate(classes.getSearchStartDate());
            }
        }

        list = classesMapper.getList(classes);

        return list;
    }

    /**
     * 파일 관련
     */
    //이미지 등록 후 seqno반환
    public Integer insertImage(MultipartFile file) {
        return fileService.insert(file, CLASS_FILE_PATH, CLASS_FILE_GROUP_CD);
    }
    //이미지 삭제 후 등록 하고 seqno 반환
    public Integer updateImage(MultipartFile file, int fileSeqno) {
        fileService.delete(fileSeqno);
        return insertImage(file);
    }
}
