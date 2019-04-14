FROM rust:latest
RUN mkdir -p /serverless-wasm
COPY ./ /serverless-wasm
WORKDIR /serverless-wasm
EXPOSE 8080/TCP
CMD ["/bin/bash", "-c", "/serverless-wasm/target/debug/serverless-wasm  /serverless-wasm/samples/config.toml"]

