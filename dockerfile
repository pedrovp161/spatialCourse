FROM condaforge/mambaforge:latest

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

# Copiar e criar ambiente primeiro (cache de layer)
COPY environment.yml .
RUN mamba env create -f environment.yml \
    && mamba clean --all -f -y

# Ativar ambiente
ENV PATH=/opt/conda/envs/scviInt/bin:$PATH

# Instalar libs gráficas via conda (substitui libgl1/libglib2.0)
RUN mamba install -n scviInt -y \
    -c conda-forge \
    libgl \
    libglib \
    && mamba clean --all -f -y

# Copiar projeto por último
COPY . .

EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]