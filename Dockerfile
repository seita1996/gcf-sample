FROM ruby:3.1.2

WORKDIR /app

# Install tools required when deploying the Cloud SDK
RUN apt-get update  -y && \
    apt-get install -y curl && \
    apt-get install -y sudo && \
    apt-get install -y apt-transport-https && \
    apt-get install -y ca-certificates && \
    apt-get install -y gnupg

# Install Cloud SDK
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && \
    sudo apt-get update -y && \
    sudo apt-get install google-cloud-sdk -y

EXPOSE 8080
