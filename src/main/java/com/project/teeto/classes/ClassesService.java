package com.project.teeto.classes;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.mapper.ClassesMapper;
import com.project.teeto.intergrate.file.FileService;
import com.project.teeto.mentee.MenteeService;
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

    @Autowired
    MenteeService menteeService;

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

            //클래스 기본 이미지 파일 있을 시
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

                    //상세 일련번호 있을 시
                    if(cl.getClassDetailSeqno() != null) {

                        //삭제 여부 Y
                        if(cl.getClassDetailDeleteYn().equals("Y")) {
                            //사진 삭제
                            if(cl.getClassDetailFileSeqno() != null) {
                                fileService.delete(cl.getClassDetailFileSeqno()); //파일 일련번호 필요
                            }
                            //상세 삭제
                            classesMapper.deleteDetail(cl);
                        }
                        //삭제 여부 N
                        else {
                            //파일 있을 시
                            if(cl.getClassDetailFile() != null) {
                                cl.setClassDetailFileSeqno(updateImage(cl.getClassDetailFile(),cl.getClassDetailFileSeqno())); //파일 일련번호 필요
                            }
                            classesMapper.updateClassDetail(cl);
                        }
                    }
                    //상세 일련번호 없을 시(추가)
                    else {
                        cl.setClassDetailFileSeqno(insertImage(cl.getClassDetailFile()));
                        classesMapper.insertClassDetail(cl);
                    }
                }
            }

            //클래스 프로세스
            if(classesProcessList != null){
                for(Classes cl : classesProcessList) {
                    cl.setClassId(classes.getClassId());

                    //프로세스 일련번호 있을 시
                    if(cl.getClassProcessSeqno() != null) {
                        //삭제 여부 Y
                        if(cl.getClassProcessDeleteYn().equals("Y")){
                            classesMapper.deleteProcess(cl);
                        }
                        //삭제 여부 N
                        else {
                            classesMapper.updateClassProcess(cl);
                        }
                    }
                    //프로세스 일련번호 없을 시 (추가)
                    else {
                        classesMapper.insertClassProcess(cl);
                    }
                }
            }

            //기본 파일 일련번호 있을 시
            if(classes.getClassFileSeqno() != null) {
                //파일이 있을 시
                if(classes.getClassFile() != null) {
                    classes.setClassFileSeqno(updateImage(classes.getClassFile(), classes.getClassFileSeqno()));
                }
                //파일이 없을 시
                else {
                    fileService.delete(classes.getClassFileSeqno());
                    classes.setClassFileSeqno(null);
                    classesMapper.deleteFileSeqno(classes);
                }
            }
            //기본 파일 일련번호 없을 시
            else {
                if(classes.getClassFile() != null) {
                    classes.setClassFileSeqno(insertImage(classes.getClassFile()));
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
        List<Classes> likeList = null;
        String classSearchCd = classes.getClassesSearchTpCd();

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTEE)){
            classes.setMenteeId(auth.getMenteeId());
        }

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTO)){
            classes.setMentoId(auth.getMentoId());
        }

        if(classSearchCd != null && classSearchCd.equals(CLASS_SEARCH_TP_CD_DATE)){
            if(classes.getSearchEndDate() == null || classes.getSearchEndDate().equals("")){
                classes.setSearchEndDate(classes.getSearchStartDate());
            }
        }

        list = classesMapper.getList(classes);

        //로그인 시
        if(auth != null) {
            //찜한 클래스
            likeList = classesMapper.getMteLikeList(auth.getMenteeId());

            //클래스 목록과 찜한 클래스 목록 중 같다면 찜여부 'Y' list뿌릴 시 필요
            for(Classes c : list) {
                for(Classes likeClass : likeList) {
                    if(c.getClassId().equals(likeClass.getClassId())) {
                        c.setClassLikeYn("Y");
                    }
                }
            }

        }

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
