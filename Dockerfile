# 베이스 이미지 선택
FROM gcc:latest

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y git

# 작업 디렉토리 설정
WORKDIR /app

# GitHub에서 코드 가져오기
RUN git clone https://github.com/bigsupernova22/calc.git

# 코드 디렉토리로 이동하고 컴파일
WORKDIR /app/calc
RUN gcc -o calculator cal_main.c add.c sub.c mul.c dur.c

# ENTRYPOINT와 CMD 설정
ENTRYPOINT ["./calculator"]
CMD ["0", "0"]