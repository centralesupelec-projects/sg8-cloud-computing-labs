FROM ubuntu
RUN apt-get update && \
    apt-get install -y wget && \
    mkdir -p /my-figures
WORKDIR /my-figures
ENTRYPOINT ["wget", "-nd", "-r", "-A", "jpg,jpeg,bmp,png,gif"]
CMD ["https://www.centralesupelec.fr/fr/presentation"]