# Käytetään GCC-kuvaa, jossa C-kääntäjä valmiina
FROM gcc:latest

# Työhakemisto kontissa
WORKDIR /app

# Kopioidaan C-ohjelma konttiin
COPY main.c .

# Käännetään ohjelma nimellä c-docker-tehtava
RUN gcc -o c-docker-tehtava main.c

# Ajetaan ohjelma kun kontti käynnistyy
CMD ["./c-docker-tehtava"]