FROM fedora

RUN dnf install -y curl zsh passwd finger shadow-utils

ENV USER=heinthant
ENV PASSWORD=p@ssw0rd5

RUN useradd -ms /bin/zsh -G wheel ${USER}
RUN echo ${PASSWORD} | passwd ${USER} --stdin

COPY --chown=${USER}:${USER} .zshrc /home/${USER}/.zshrc

USER ${USER}
WORKDIR /home/${USER}
CMD [ "/bin/zsh" ]
