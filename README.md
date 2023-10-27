# MySQL AutoBuild

Este repositório contém uma ação que automatiza o processo de construção de um contêiner quando o arquivo `script.sql` é atualizado.

## Pré-requisitos
Antes de usar esta ação, você precisa adicionar suas credenciais do Docker Hub como segredos em seu repositório:

- `DOCKERHUB_TOKEN` (Token gerado no DockerHub)
- `DOCKERHUB_USERNAME` (Seu nome de usuário do DockerHub)

## Personalizando o Nome da Imagem
Se você deseja personalizar o nome da imagem Docker, pode fazer isso modificando a última linha no arquivo `mysql-autobuild/.github/workflows/docker-image.yml`. Substitua-o da seguinte forma:

```yaml
tags: ${{ secrets.DOCKERHUB_USERNAME }}/seu-nome-escolhido:latest
