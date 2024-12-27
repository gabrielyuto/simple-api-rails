# Use a imagem oficial do Ruby como base
FROM ruby:3.2

# Instalar dependências do sistema
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  yarn \
  sqlite3 \
  libsqlite3-dev

# Configurar diretório de trabalho no container
WORKDIR /app

# Instalar Bundler
RUN gem install bundler

# Expor a porta do servidor Rails
EXPOSE 3000

# Comando padrão
CMD ["irb"]
