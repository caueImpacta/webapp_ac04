# python versao 3.8, leve criado no Debian
FROM python:3.8-slim-buster

# define um diretório para o aplicativo
WORKDIR /app
# copia todos os arquivos para o container
COPY . .

# instala as dependencias
RUN pip3 install -r requirements.txt

# define o numero da porta que o container deve expor
EXPOSE 5000

# execute o comando
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]