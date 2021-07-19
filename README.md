# 영화 정보 어플 
---
## 목차 
1. [실행 화면](#실행_화면)

2. [코드](#코드)

- API 이용
- 테이블 제어
- 다른 스위프트 파일에 정보 전송
- 웹뷰 띄우기 

## 실행 화면 

<img width="365" alt="실행1" src="https://user-images.githubusercontent.com/76652929/126074831-be7edc9a-9da3-4b36-a12e-162131556c64.png">
 - 영화 정보를 api를 통해 받아와 테이블에 이 정보를 뿌려줍니다.   
 
<img width="354" alt="정보1" src="https://user-images.githubusercontent.com/76652929/126074835-63fd9adb-3c04-4325-a502-13f9648ab3ae.png">

<img width="357" alt="정보2" src="https://user-images.githubusercontent.com/76652929/126074840-de5e08d7-dd36-46c8-947d-306a6e6ea9c6.png"> 
- 각 테이블을 누르면 해당되는 영화를 검색한 창을 띄워줍니다.   

<img width="356" alt="맵검색" src="https://user-images.githubusercontent.com/76652929/126074843-c6c7de89-6a6f-4d67-b920-d972dee57b9d.png"> 
- 화면 아래에 탭바를 만들어 영화관 정보를 클릭하면 근처의 영화관을 찾아줍니다.    


## 코드 

### 1. API 이용

- 가져올 데이터 구조 

<img width="400" height="400" alt="파싱할 데이터 구조" src="https://user-images.githubusercontent.com/76652929/126074811-922a2ba7-9825-43e5-b367-824f9418fdea.png">  


- JSON 데이터 파싱 

<img width="665" alt="JSON파싱" src="https://user-images.githubusercontent.com/76652929/126074849-065bac2f-d3d1-480e-bd52-e188d2769866.png">


- 데이터 뿌려주기 

<img width="693" alt="테이블에 데이터 뿌려주기" src="https://user-images.githubusercontent.com/76652929/126074851-4084deba-3d9a-4c64-8fec-e7eab71ff289.png"> 


### 2. 테이블 제어 

- 타이틀

<img width="657" alt="테이블 타이틀" src="https://user-images.githubusercontent.com/76652929/126074860-d61cbd55-fc3f-4c3b-b60d-f875387065cb.png">

- 가져올 정보 갯수

<img width="662" alt="몇개 정보 가져올지" src="https://user-images.githubusercontent.com/76652929/126074951-240c6888-96f3-4c1c-8e9d-1337d3747beb.png">

- 반복 갯수, 테이블 인덱스 나타내기 

<img width="642" alt="반복,자세정보" src="https://user-images.githubusercontent.com/76652929/126074962-8b064f6f-6d6e-49e0-9e45-1681fd9ac4a6.png">






### 3. 다른 스위프트 파일에 정보 전송

<img width="647" alt="다른파일에 정보주기" src="https://user-images.githubusercontent.com/76652929/126074887-89126f08-bc22-4fea-8004-b275a7022060.png">



### 4. 웹뷰 띄우기 

- 검색 결과

<img width="597" alt="검색결과 웹뷰에" src="https://user-images.githubusercontent.com/76652929/126074890-be2bd7ce-6ee9-48df-8aa3-cf0afe73c9d0.png">


- 네이버 맵 이용 

<img width="687" alt="영화관 위치 맵에" src="https://user-images.githubusercontent.com/76652929/126074892-78cb2544-229b-4476-83b7-da19a48c7df2.png">




