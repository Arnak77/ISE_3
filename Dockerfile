FROM openjdk:8-jdk-alpine
COPY PrimeNumbers.java .
RUN javac PrimeNumbers.java
CMD ["java", "PrimeNumbers"]
