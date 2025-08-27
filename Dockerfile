# 베이스 이미지 선택
FROM ubuntu:22.04

# 필수 패키지 설치
RUN apt update && apt install -y git gcc make

# 작업 디렉토리 설정
WORKDIR /app

# 계산기 소스코드 클론
RUN git clone https://github.com/bigsupernova22/calculate.git .

# 컴파일 (예: calc.c → calc 실행파일)
RUN make

# ENTRYPOINT: 실행할 프로그램 고정
ENTRYPOINT ["./calculate"]

# CMD: 기본 인자 설정 (없을 경우 0 0)
CMD ["0", "0"]