FROM colstrom/fish

RUN apk-install \
        curl \
				fish \
        git
RUN adduser \
       -D \
       -u 1000 \
       -s /usr/local/bin/fish \
   	nemo
RUN  echo 'nemo ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER nemo
WORKDIR /home/nemo

RUN curl \
        --location \
        --silent \
        https://raw.github.com/rafaelrinaldi/pure/master/installer.fish \
		> /tmp/pure_installer.fish
RUN fish -c 'source /tmp/pure_installer.fish; and install_pure'

ENTRYPOINT ["fish"]
