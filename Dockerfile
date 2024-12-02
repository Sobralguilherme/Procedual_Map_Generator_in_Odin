FROM debian:bookworm-slim

# Odin precisa de llvm, clang, git e ferramentas de build
RUN apt-get update -qq \
    && apt-get install -y llvm clang git build-essential ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Definir diretório de trabalho para instalação do Odin
WORKDIR /Odin-install

# Clonar o repositório, checar o commit específico e compilar
RUN git clone https://github.com/odin-lang/Odin.git /Odin-install \
    && git checkout dev-2024-02 \
    && make

# Mover os arquivos necessários para o diretório final e limpar
RUN mkdir /opt/Odin \
    && cp -R ./base ./core ./shared ./vendor ./odin /opt/Odin/ \
    && rm -rf /Odin-install

# Adicionar o diretório do Odin ao PATH
ENV PATH="/opt/Odin:${PATH}"

# Definir o diretório de trabalho padrão
WORKDIR /
