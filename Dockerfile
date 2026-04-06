# 1. Base Image: Jisme g++ compiler pehle se ho
FROM gcc:latest

# 2. Container ke andar ek folder banao
WORKDIR /usr/src/app

# 3. Apni hello.cpp file ko container mein copy karo
COPY hello.cpp .

# 4. Code ko compile karke executable banao
RUN g++ -o myapp hello.cpp

# 5. Jab container start ho, toh app ko run karo
CMD ["./myapp"]