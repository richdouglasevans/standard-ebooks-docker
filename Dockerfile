FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive \
    apt update && \
    apt install -y \
    calibre default-jre git file \
    python3-dev python3-pip python3-venv pipx

RUN python3 -m pipx ensurepath && \
    python3 -m pipx install standardebooks

WORKDIR /seb

COPY create-draft.sh ./create-draft.sh

ENTRYPOINT [ "/seb/create-draft.sh" ]
