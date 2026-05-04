FROM condaforge/mambaforge:latest

# Evita prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Dependências do sistema
RUN apt-get update && apt-get install -y \
    build-essential \
    libhdf5-dev \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Diretório de trabalho
WORKDIR /app

# Copiar environment.yml
COPY environment.yml .

# Criar ambiente (IMPORTANTE)
RUN mamba env create -f environment.yml

# Ativar ambiente automaticamente
ENV PATH=/opt/conda/envs/scviInt/bin:$PATH

# Copiar projeto
COPY . .

# Porta do Jupyter
EXPOSE 8888

# Comando padrão
CMD ["bash"]