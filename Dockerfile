# C 컴파일러가 포함된 이미지 사용
FROM gcc:latest

# 작업 디렉토리 설정
WORKDIR /app

# C 소스 파일 복사
COPY calc.c .

# 컴파일 명령어
RUN gcc -o calc calc.c

# 컨테이너 실행 시 계산기 실행
CMD ["./calc"]