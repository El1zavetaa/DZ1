FROM openjdk:17 AS build
WORKDIR /app
COPY src/ /app/src
RUN javac -d out src/Main.java


FROM openjdk:17
WORKDIR /app
COPY --from=build /app/out /app/out
CMD ["java", "-cp", "out", "Main"]