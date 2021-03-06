-- MySQL Script generated by MySQL Workbench
-- Thu Oct 28 18:23:03 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema teeto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema teeto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `teeto` DEFAULT CHARACTER SET utf8 ;
USE `teeto` ;

-- -----------------------------------------------------
-- Table `teeto`.`TB_FILE_M`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_FILE_M` (
  `FILE_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '파일 일련번호',
  `FILE_GRP_CD` VARCHAR(20) NOT NULL COMMENT '파일 그룹 코드',
  `FILE_NM` VARCHAR(100) NOT NULL COMMENT '파일 명',
  `FILE_EXT` VARCHAR(10) NULL COMMENT '파일 확장자',
  `FILE_PATH` VARCHAR(50) NOT NULL COMMENT '파일 경로',
  `FILE_SIZE` DECIMAL(10,0) NULL COMMENT '파일 크기',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`FILE_SEQNO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_AUTH_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_AUTH_L` (
  `APV_REQ_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '승인 요청 일련번호',
  `APV_REQ_TP_CD` VARCHAR(20) NOT NULL COMMENT '승인 요청 타입 코드',
  `APV_REQ_TP_VAL` VARCHAR(50) NOT NULL COMMENT '승인 요청 타입 값',
  `CERT_NO` CHAR(8) NOT NULL COMMENT '인증 번호',
  `UNIX_TIME_APV_STRT_DTTM` DECIMAL(13,0) NOT NULL COMMENT '유닉스 시간 승인 시작 일시',
  `UNIX_TIME_APV_END_DTTM` DECIMAL(13,0) NOT NULL COMMENT '유닉스 시간 승인 종료 일시',
  `CERT_CHCK_YN` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '인증 확인 여부',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`APV_REQ_SEQNO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_CD_M`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_CD_M` (
  `CD` VARCHAR(20) NOT NULL COMMENT '코드',
  `HGRK_CD` VARCHAR(20) NULL COMMENT '상위 코드',
  `CD_NM` VARCHAR(30) NOT NULL COMMENT '코드 명',
  `CD_LVL` DECIMAL(5,0) NULL COMMENT '코드 레벨',
  `SRT_SEQ` DECIMAL(5,0) NULL COMMENT '정렬 순서',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CD`),
  INDEX `FK_HGRK_CD_CD_idx` (`HGRK_CD` ASC) VISIBLE,
  CONSTRAINT `FK_HGRK_CD_CD`
    FOREIGN KEY (`HGRK_CD`)
    REFERENCES `teeto`.`TB_CD_M` (`CD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MEMBER_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MEMBER_L` (
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `MEM_NM` VARCHAR(20) NOT NULL COMMENT '회원 명',
  `MEM_EMAIL` VARCHAR(50) NOT NULL COMMENT '회원 EMAIL',
  `MEM_TEL` VARCHAR(20) NULL COMMENT '회원 전화번호',
  `MEM_PROFILE_FILE_SEQNO` DECIMAL(11,0) NULL COMMENT '회원 프로필 파일 일련번호',
  `MEM_TP_CD` VARCHAR(20) NOT NULL COMMENT '회원 타입 코드',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`MEM_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_TERMS_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_TERMS_L` (
  `TERMS_CD` VARCHAR(20) NOT NULL COMMENT '약관 코드',
  `TERMS_TITLE` VARCHAR(100) NOT NULL COMMENT '약관 제목',
  `TERMS_CTT` TEXT NOT NULL COMMENT '약관 전문',
  `MNDT_AGR_YN` CHAR(1) NOT NULL DEFAULT 'Y' COMMENT '필수 동의 여부',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `REMK` TEXT NULL COMMENT '비고',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`TERMS_CD`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MEMBER_TERMS_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MEMBER_TERMS_L` (
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `TERMS_CD` VARCHAR(20) NOT NULL COMMENT '약관 코드',
  `TERMS_AGR_DTTM` DATETIME NOT NULL COMMENT '약관 동의 일시',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  INDEX `FK_TERMS_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  INDEX `FK_TERMS_CD_CD_idx` (`TERMS_CD` ASC) VISIBLE,
  CONSTRAINT `FK_TERMS_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_TERMS_CD_CD`
    FOREIGN KEY (`TERMS_CD`)
    REFERENCES `teeto`.`TB_TERMS_L` (`TERMS_CD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_LOGIN_I`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_LOGIN_I` (
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `LOGIN_ID` VARCHAR(50) NOT NULL COMMENT '로그인 ID',
  `PASSWORD` VARCHAR(100) NOT NULL COMMENT '비밀번호',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  INDEX `FK_LOGIN_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  PRIMARY KEY (`LOGIN_ID`),
  CONSTRAINT `FK_LOGIN_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MEM_SECESSION_I`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MEM_SECESSION_I` (
  `SECESSION_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '탈퇴 일련번호',
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `SECESSION_TP_CD` VARCHAR(20) NOT NULL COMMENT '탈퇴 타입 코드',
  `SECESSION_REASON` VARCHAR(100) NULL COMMENT '탈퇴 사유',
  `SECESSION_DATE` DATETIME NOT NULL COMMENT '탈퇴 일시',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`SECESSION_SEQNO`),
  INDEX `FK_SECESSION_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  CONSTRAINT `FK_SECESSION_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MENTEE_I`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MENTEE_I` (
  `MENTEE_ID` VARCHAR(20) NOT NULL COMMENT '멘티 ID',
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `MENTEE_NM` VARCHAR(20) NOT NULL COMMENT '멘티 닉네임',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`MENTEE_ID`),
  INDEX `FK_MENTEE_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  CONSTRAINT `FK_MENTEE_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MENTO_I`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MENTO_I` (
  `MENTO_ID` VARCHAR(20) NOT NULL COMMENT '멘토 ID',
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `MENTO_TEL` VARCHAR(20) NOT NULL COMMENT '멘토 전화번호',
  `MENTO_NM` VARCHAR(20) NOT NULL COMMENT '멘토 닉네임',
  `MENTO_DSTN` TEXT NULL COMMENT '멘토 설명',
  `MENTO_BANK` VARCHAR(20) NOT NULL COMMENT '멘토 은행',
  `MENTO_ACCOUNT` VARCHAR(20) NOT NULL COMMENT '멘토 계좌',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`MENTO_ID`),
  INDEX `FK_MENTO_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  CONSTRAINT `FK_MENTO_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_FAQ_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_FAQ_L` (
  `FAQ_SEQNO` DECIMAL(11,0) NOT NULL COMMENT 'FAQ 일련번호',
  `FAQ_CD` VARCHAR(20) NOT NULL COMMENT 'FAQ 코드',
  `FAQ_QUESTION` VARCHAR(100) NOT NULL COMMENT 'FAQ 질문',
  `FAQ_ANSWER` TEXT NOT NULL COMMENT 'FAQ 답변',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`FAQ_SEQNO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_COMMUNITY_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_COMMUNITY_L` (
  `CMMT_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '커뮤니티 일련번호',
  `CMMT_TP_CD` VARCHAR(20) NOT NULL COMMENT '커뮤니티 타입 코드',
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `MENTEE_ID` VARCHAR(20) NULL COMMENT '멘티 ID',
  `MENTO_ID` VARCHAR(20) NULL COMMENT '멘토 ID',
  `CMMT_TITLE` VARCHAR(50) NOT NULL COMMENT '커뮤니티 제목',
  `CMMT_CTT` TEXT NOT NULL COMMENT '커뮤니티 내용',
  `CMMT_FILE_SEQNO` DECIMAL(11,0) NULL COMMENT '커뮤니티 파일 일련번호',
  `CMMT_VIEW_CNT` DECIMAL(11,0) NOT NULL DEFAULT 0 COMMENT '커뮤니티 조회 수',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CMMT_SEQNO`),
  INDEX `FK_COMMUNITY_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  INDEX `FK_COMMUNITY_MTE_ID_idx` (`MENTEE_ID` ASC) VISIBLE,
  INDEX `FK_COMMUNITY_MTO_ID_idx` (`MENTO_ID` ASC) VISIBLE,
  CONSTRAINT `FK_COMMUNITY_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMMUNITY_MTE_ID`
    FOREIGN KEY (`MENTEE_ID`)
    REFERENCES `teeto`.`TB_MENTEE_I` (`MENTEE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMMUNITY_MTO_ID`
    FOREIGN KEY (`MENTO_ID`)
    REFERENCES `teeto`.`TB_MENTO_I` (`MENTO_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_COMMUNITY_COMMENT_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_COMMUNITY_COMMENT_L` (
  `CMMT_CMT_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '커뮤니티 댓글 일련번호',
  `CMMT_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '커뮤니티 일련번호',
  `MEM_ID` VARCHAR(20) NOT NULL COMMENT '회원 ID',
  `MENTEE_ID` VARCHAR(20) NULL COMMENT '멘티 ID',
  `MENTO_ID` VARCHAR(20) NULL COMMENT '멘토 ID',
  `CMMT_CMT_CTT` TEXT NOT NULL COMMENT '커뮤니티 댓글 내용',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CMMT_CMT_SEQNO`),
  INDEX `FK_CMT_CMMT_SEQNO_idx` (`CMMT_SEQNO` ASC) VISIBLE,
  INDEX `FK_CMMT_CMT_MEM_ID_idx` (`MEM_ID` ASC) VISIBLE,
  INDEX `FK_CMMT_CMT_MTE_ID_idx` (`MENTEE_ID` ASC) VISIBLE,
  INDEX `FK_CMMT_CMT_MTO_ID_idx` (`MENTO_ID` ASC) VISIBLE,
  CONSTRAINT `FK_CMMT_CMT_CMMT_SEQNO`
    FOREIGN KEY (`CMMT_SEQNO`)
    REFERENCES `teeto`.`TB_COMMUNITY_L` (`CMMT_SEQNO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CMMT_CMT_MEM_ID`
    FOREIGN KEY (`MEM_ID`)
    REFERENCES `teeto`.`TB_MEMBER_L` (`MEM_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CMMT_CMT_MTE_ID`
    FOREIGN KEY (`MENTEE_ID`)
    REFERENCES `teeto`.`TB_MENTEE_I` (`MENTEE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CMMT_CMT_MTO_ID`
    FOREIGN KEY (`MENTO_ID`)
    REFERENCES `teeto`.`TB_MENTO_I` (`MENTO_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_CLASS_CATEGORY_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_CLASS_CATEGORY_L` (
  `CLASS_CTGR_CD` VARCHAR(20) NOT NULL COMMENT '클래스 카테고리 코드',
  `CLASS_HGRK_CTGR_CD` VARCHAR(20) NULL COMMENT '클래스 상위 카테고리 코드',
  `CLASS_CTGR_CD_NM` VARCHAR(100) NOT NULL COMMENT '클래스 카테고리 코드 명',
  `SRT_SEQ` DECIMAL(5,0) NULL COMMENT '정렬 순서',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CLASS_CTGR_CD`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_CLASS_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_CLASS_L` (
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `MENTO_ID` VARCHAR(20) NOT NULL COMMENT '멘토 ID',
  `CLASS_CTGR_CD` VARCHAR(20) NOT NULL COMMENT '클래스 카테고리 코드',
  `CLASS_DETAIL_CTGR_CD` VARCHAR(20) NOT NULL COMMENT '클래스 상세 카테고리 코드',
  `CLASS_NM` VARCHAR(50) NOT NULL COMMENT '클래스 명',
  `CLASS_FILE_SEQNO` DECIMAL(11,0) NULL COMMENT '클래스 파일 일련번호',
  `CLASS_TITLE` VARCHAR(100) NOT NULL COMMENT '클래스 제목',
  `CLASS_DSTN` TEXT NOT NULL COMMENT '클래스 설명',
  `CLASS_STRT_DATE` DATETIME NOT NULL COMMENT '클래스 시작 일시',
  `CLASS_STRT_TIME` VARCHAR(20) NOT NULL COMMENT '클래스 시작 시간',
  `CLASS_DRTN_TIME` VARCHAR(20) NOT NULL COMMENT '클래스 소요 시간',
  `CLASS_CURRENT_MTE` DECIMAL(3,0) NULL DEFAULT 0 COMMENT '클래스 현재 멘티 수',
  `CLASS_MAX_MTE` DECIMAL(3,0) NOT NULL COMMENT '클래스 최대 멘티 수',
  `CLASS_PLACE` VARCHAR(100) NOT NULL COMMENT '클래스 장소',
  `CLASS_CHARGE` VARCHAR(20) NOT NULL COMMENT '클래스 금액',
  `CLASS_END_YN` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '클래스 종료 여부',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CLASS_ID`),
  INDEX `FK_CLASS_MTO_ID_idx` (`MENTO_ID` ASC) VISIBLE,
  INDEX `FK_CLASS_CTGR_CD_CD_idx` (`CLASS_CTGR_CD` ASC) VISIBLE,
  INDEX `FK_CLASS_HGRK_CTGR_CD_idx` (`CLASS_DETAIL_CTGR_CD` ASC) VISIBLE,
  CONSTRAINT `FK_CLASS_MTO_ID`
    FOREIGN KEY (`MENTO_ID`)
    REFERENCES `teeto`.`TB_MENTO_I` (`MENTO_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CLASS_CTGR_CD`
    FOREIGN KEY (`CLASS_CTGR_CD`)
    REFERENCES `teeto`.`TB_CLASS_CATEGORY_L` (`CLASS_CTGR_CD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CLASS_HGRK_CTGR_CD`
    FOREIGN KEY (`CLASS_DETAIL_CTGR_CD`)
    REFERENCES `teeto`.`TB_CLASS_CATEGORY_L` (`CLASS_CTGR_CD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MENTO_SALARY_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MENTO_SALARY_L` (
  `MENTO_ID` VARCHAR(20) NOT NULL COMMENT '멘토 ID',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `SALARY_BANK` VARCHAR(20) NOT NULL COMMENT '급여 은행',
  `SALARY_ACCOUNT` VARCHAR(20) NOT NULL COMMENT '급여 계좌',
  `SALARY_PRICE` VARCHAR(20) NOT NULL COMMENT '급여 금액',
  `SALARY_DATE` DATETIME NOT NULL COMMENT '급여 일시',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  INDEX `FK_SALARY_MTO_ID_idx` (`MENTO_ID` ASC) VISIBLE,
  INDEX `FK_SALARY_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  CONSTRAINT `FK_SALARY_MTO_ID`
    FOREIGN KEY (`MENTO_ID`)
    REFERENCES `teeto`.`TB_MENTO_I` (`MENTO_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALARY_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_CLASS_DETAIL_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_CLASS_DETAIL_L` (
  `CLASS_DETAIL_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '클래스 상세 일련번호',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `CLASS_DETAIL_TITLE` VARCHAR(100) NOT NULL COMMENT '클래스 상세 제목',
  `CLASS_DETAIL_FILE_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '클래스 상세 파일 일련번호',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CLASS_DETAIL_SEQNO`),
  INDEX `FK_CLASS_DTL_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  CONSTRAINT `FK_CLASS_DTL_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_CLASS_PROCESS_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_CLASS_PROCESS_L` (
  `CLASS_PROCESS_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '클래스 프로세스 일련번호',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `CLASS_PROCESS_TITLE` VARCHAR(100) NOT NULL COMMENT '클래스 프로세스 제목',
  `CLASS_PROCESS_DESC` TEXT NOT NULL COMMENT '클래스 프로세스 설명',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CLASS_PROCESS_SEQNO`),
  INDEX `FK_CLASS_PRCS_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  CONSTRAINT `FK_CLASS_PRCS_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_CLASS_ADDR_I`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_CLASS_ADDR_I` (
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `CLASS_ZIP_NO` VARCHAR(20) NOT NULL COMMENT '클래스 우편번호',
  `CLASS_BASE_ADDR` VARCHAR(50) NOT NULL COMMENT '클래스 기본 주소',
  `CLASS_DTL_ADDR` VARCHAR(50) NOT NULL COMMENT '클래스 상세 주소',
  `CLASS_ADDR_LAT` VARCHAR(20) NOT NULL COMMENT '클래스 주소 위도',
  `CLASS_ADDR_LNG` VARCHAR(20) NOT NULL COMMENT '클래스 주소 경도',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  INDEX `FK_CLASS_ADDR_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  CONSTRAINT `FK_CLASS_ADDR_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_REVIEW_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_REVIEW_L` (
  `RVW_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '후기 일련번호',
  `MENTEE_ID` VARCHAR(20) NOT NULL COMMENT '멘티 ID',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `RVW_TITLE` VARCHAR(50) NOT NULL COMMENT '후기 제목',
  `RVW_CTT` TEXT NOT NULL COMMENT '후기 내용',
  `RVW_SCOR` DECIMAL(2,0) NOT NULL COMMENT '후기 점수',
  `REPLY_YN` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '답변 여부',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`RVW_SEQNO`),
  INDEX `FK_REVIEW_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  INDEX `FK_REVIEW_MTE_ID_idx` (`MENTEE_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REVIEW_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_REVIEW_MTE_ID`
    FOREIGN KEY (`MENTEE_ID`)
    REFERENCES `teeto`.`TB_MENTEE_I` (`MENTEE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_REPLY_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_REPLY_L` (
  `REPLY_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '답변 일련번호',
  `RVW_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '리뷰 일련번호',
  `MENTO_ID` VARCHAR(20) NOT NULL COMMENT '멘토 ID',
  `REPLY_CTT` TEXT NOT NULL COMMENT '답변 내용',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`REPLY_SEQNO`),
  INDEX `FK_REPLY_RVW_SEQNO_idx` (`RVW_SEQNO` ASC) VISIBLE,
  INDEX `FK_REPLY_MTO_ID_idx` (`MENTO_ID` ASC) VISIBLE,
  CONSTRAINT `FK_REPLY_RVW_SEQNO`
    FOREIGN KEY (`RVW_SEQNO`)
    REFERENCES `teeto`.`TB_REVIEW_L` (`RVW_SEQNO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_REPLY_MTO_ID`
    FOREIGN KEY (`MENTO_ID`)
    REFERENCES `teeto`.`TB_MENTO_I` (`MENTO_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_PAYMENT_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_PAYMENT_L` (
  `PAYMENT_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '결제 일련번호',
  `MENTEE_ID` VARCHAR(20) NOT NULL COMMENT '멘티 ID',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `PAYMENT_TP_CD` VARCHAR(20) NOT NULL COMMENT '결제 타입 코드',
  `PAYMENT_PRICE` DECIMAL(10,0) NOT NULL COMMENT '결제 금액',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`PAYMENT_SEQNO`),
  INDEX `FK_PAYMENT_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  INDEX `FK_PAYMENT_MTE_ID_idx` (`MENTEE_ID` ASC) VISIBLE,
  CONSTRAINT `FK_PAYMENT_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_PAYMENT_MTE_ID`
    FOREIGN KEY (`MENTEE_ID`)
    REFERENCES `teeto`.`TB_MENTEE_I` (`MENTEE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MENTEE_CLASS_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MENTEE_CLASS_L` (
  `MENTEE_ID` VARCHAR(20) NOT NULL COMMENT '멘티 ID',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `CLASS_APPL_DATE` DATETIME NOT NULL COMMENT '클래스 신청 일자',
  `PAYMENT_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '결제 일련번호',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  INDEX `FK_MTE_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  INDEX `FK_MTE_CLASS_PAYMENT_SEQ_idx` (`PAYMENT_SEQNO` ASC) VISIBLE,
  CONSTRAINT `FK_MTE_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_MTE_CLASS_MTE_ID`
    FOREIGN KEY (`MENTEE_ID`)
    REFERENCES `teeto`.`TB_MENTEE_I` (`MENTEE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_MTE_CLASS_PAYMENT_SEQ`
    FOREIGN KEY (`PAYMENT_SEQNO`)
    REFERENCES `teeto`.`TB_PAYMENT_L` (`PAYMENT_SEQNO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teeto`.`TB_MENTEE_CLASS_LIKE_L`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teeto`.`TB_MENTEE_CLASS_LIKE_L` (
  `CLASS_LIKE_SEQNO` DECIMAL(11,0) NOT NULL COMMENT '클래스 찜 일련번호',
  `MENTEE_ID` VARCHAR(20) NOT NULL COMMENT '멘티 ID',
  `CLASS_ID` VARCHAR(20) NOT NULL COMMENT '클래스 ID',
  `USE_YN` CHAR(1) NOT NULL DEFAULT 'Y',
  `CRE_DTTM` DATETIME NOT NULL,
  `UPT_DTTM` DATETIME NULL,
  PRIMARY KEY (`CLASS_LIKE_SEQNO`),
  INDEX `FK_MTE_CLASS_LIKE_MTE_ID_idx` (`MENTEE_ID` ASC) VISIBLE,
  INDEX `FK_MTE_CLASS_LIKE_CLASS_ID_idx` (`CLASS_ID` ASC) VISIBLE,
  CONSTRAINT `FK_MTE_CLASS_LIKE_MTE_ID`
    FOREIGN KEY (`MENTEE_ID`)
    REFERENCES `teeto`.`TB_MENTEE_I` (`MENTEE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_MTE_CLASS_LIKE_CLASS_ID`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `teeto`.`TB_CLASS_L` (`CLASS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
