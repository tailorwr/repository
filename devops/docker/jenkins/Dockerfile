FROM jenkins/jenkins:lts

USER root

# Establecer zona horaria
ENV TZ=America/Bogota
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Instalar dependencias necesarias
RUN apt-get update && \
    apt-get install -y curl ca-certificates gnupg lsb-release docker.io && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Instalar kubectl
RUN curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl && \
         install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
         
#Agregar usuario Jenkins al grupo docker (GID del host = 999)
RUN groupadd -g 115 docker2 && usermod -aG docker2 jenkins

USER jenkins
