## 💻 DB Project - 교육센터 관리시스템
<br>

## 📓 프로젝트 소개
- 교육센터 운영 및 유지관리 프로그램을 오라클을 이용하여 구현한다.
<br>

## 🚩 프로젝트 기간 및 투입인원
- 2021년 05월 24일 ~ 2021년 06월 04일 (총 14일)
- 4명
<br>

## 🛠 사용기술
<p align="center">
  <img src="https://img.shields.io/badge/Language-Java_8-007396?style=flat&logo=java&logoColor=white">&nbsp 
  <img src="https://img.shields.io/badge/Database-Oracle-F80000?style=flat&logo=oracle&logoColor=white">&nbsp 
</p>

<br>

## 📷 ERD 
![erd썸네일오라클](https://user-images.githubusercontent.com/83936196/131252092-a534a5fc-db4b-448d-ba15-819d3b9b4132.png)
![오라클다이어그램최종1](https://user-images.githubusercontent.com/83936196/131252090-8c072965-c825-4d3c-9905-8f7ec834671e.png)

<br>

## 📒 구현목표
|    관리자   |  교사  | 교육생 |
| :--------: | :--------: | :--------: |
| - 교사 등록 및 관리 | - 강의스케줄 조회 | - 성적조회 |
| - 교육생 등록 및 관리 | - 배점 및 성적 입출력 | - 출결 관리 및 입퇴실 체크 |
| - 과목 관리 | - 교육생 성적 등록 및 관리 | - 교사 평가 |
| - 과정 관리 | - 교사 평가 조회 | - 취업여부 조회 |
| - 수료생 취업 정보 관리 | - 근태 조회 | - 자격증 조회 |
| - 성적 조회 |
| - 교사 평가 조회 |

<br>

## 👨‍💻 담당 업무
|    단계    |  담당업무                                              |
| :--------: | :----------------------------------------------------------- |
|  기획단계  | - 요구사항 분석서 작성</br>- ERD 작성</br>- 더미데이터 생성</br>- 데이터구조 정리 |
|  구현단계  | - [관리자] 과정 기초 정보 관리</br>- [관리자] 과정별 시험 및 성적 등록여부</br>- [관리자] 과목별/ 교육생별 시험 성적 관리</br>- [관리자] 시설 관리</br>- [교사] 계정관리</br>- [교사] 강의 스케줄 조회</br>- [교사] 배점 및 성적 입출력</br>- [교사] 담당 교육생 관리</br>- [교사] 근태관리 |
| 마무리단계 | - 테스트 및 에러 수정 |

<br>

## 💻 담당 업무 SQL문(일부)
### 함수(Function) ###
 <img src="https://user-images.githubusercontent.com/83936196/131253902-7f7af0f0-7830-4594-ba0a-65405d8cde61.png" width="48%"> <img src="https://user-images.githubusercontent.com/83936196/131253903-a913e386-9e29-457b-b949-01ceff010a14.png" width="48%">
 <img src="https://user-images.githubusercontent.com/83936196/131253905-d6de06cc-6e85-4f9c-b2a2-587dbb8da401.png" width="48%"> <img src="https://user-images.githubusercontent.com/83936196/131253907-cd0e2246-9b6c-4efe-a7a1-976ccbc9f20c.png" width="48%">

**📷 함수** 
- 기간입력 함수, 과정 진행 상태, 수료 및 중도탈락, 성적등록여부 등 자주 반복해서 사용되는 코드는 함수로 만들어서 사용하였다.

---

### 인덱스(Index) ###
![인덱스](https://user-images.githubusercontent.com/83936196/131254784-4e59fe2e-69c9-4ad3-aeba-0ea7f7614520.png)

**📷 인덱스** 
- 데이터의 양이 많고, 사용하는 곳이 많은 학생 테이블, 출결 테이블에는 인덱스를 사용하였다.

---

### 트리거(Trigger) ###
![트리거](https://user-images.githubusercontent.com/83936196/131254853-d56dffd4-080f-4cfd-8e63-b8fc530fd765.png)

**📷 트리거** 
- 개설과목이 update될 때 확인할 수 있도록 트리거를 사용하였다.

---

### 뷰(View) ###
<img src="https://user-images.githubusercontent.com/83936196/131254062-fa25dd16-2976-4e3f-8e52-e69f0841c6ce.png" width="48%"> <img src="https://user-images.githubusercontent.com/83936196/131254065-01165671-6065-49e1-a5cf-3b8de95bbedc.png" width="48%">

**📷 뷰** 
- 테이블들을 조건절(where절)과 조인(Join)을 이용하여 가공하였다.

---

### 프로시저(Procedure) ###
![프로시저방법1](https://user-images.githubusercontent.com/83936196/131254464-d5d6eb7c-ecd1-464b-b8de-92a125287ec7.png)

![프로시저방법2](https://user-images.githubusercontent.com/83936196/131254465-a459c951-14ce-4a30-aab6-0c2595d16afb.png)
