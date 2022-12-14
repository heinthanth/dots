FROM ubuntu

RUN apt update
RUN apt install -y curl zsh passwd finger sudo

ENV USER=heinthant
ENV PASSWORD=p@ssw0rd5

RUN useradd -ms /bin/zsh -G sudo ${USER}
RUN echo "${USER}:${PASSWORD}" | chpasswd

COPY --chown=${USER}:${USER} .zshrc /home/${USER}/.zshrc

USER ${USER}
WORKDIR /home/${USER}
CMD [ "/bin/zsh" ]
