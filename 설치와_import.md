# 설치 및 import

# 1. PostgreSQL 설치 및 DBeaver 설치

- PostgreSQL 설치 시 필수 확인
    - PostgreSQL은 설치가 꽤 걸린다.
    - 한글명으로 c:\user\(사용자명) 이 되어있는 경우 설치도 안되고, Error가 발생한다.
    - 나는 여러가지 방법을 찾다가 결국 어드민 계정에 설치했다.
    - 이때 시간이 많이 걸렸고 기분전환 겸 네이버 웨일에 검색엔진 구글로 바꿨다... ㅎ
- DBeaver
    - 내가 아는 그 비버? 했는데 그림이 진짜 비버다.

## 2. 데이터 import

- DBeaver에서 설정 시에 PostgreSQL을 클릭하고 다운로드 받아준다.
- 설치 시 입력했던 비밀번호가 틀리면... 망...함... 잘 기억해주자.
- 회사 실 서버가 아니라 로컬 호스트이기 때문에 실습에서는 신경 쓸 필요 x
- 스키마 → public → Tables → csv 파일 넣기. 우클릭 후 csv에서 가져오기
- Target Type ⇒ VARCHAR (문자행) , INTEGER (숫자), numeric... 등 너무 많음
- 좌측 상단에 있는 SQL을 클릭하고

```sql
select *
	from public.파일 # 드래그 해주면 된다.
```

위 코드처럼 입력 후 실행 버튼을 누르면 해당 CSV 파일을 확인할 수 있다.

## 3. DBeaver 특징

- ctrl + enter가 실행이다 (파이썬은 shift + enter인 것과 차이)