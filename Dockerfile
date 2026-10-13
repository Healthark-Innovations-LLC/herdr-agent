FROM pi-agent:latest

ENV PATH=$PATH:/root/.local/bin

COPY entrypoint.sh /herdr.sh

RUN curl -fsSL https://herdr.dev/install.sh | sh && \
	chmod +x /herdr.sh

WORKDIR /root/brain

ENTRYPOINT ["/herdr.sh"]

