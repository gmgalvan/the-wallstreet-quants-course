FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        texlive-latex-base \
        texlive-fonts-recommended \
        texlive-latex-extra \
        texlive-science \
        dvipng \
        ghostscript \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

WORKDIR /workspace

EXPOSE 8888

COPY . /workspace

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
