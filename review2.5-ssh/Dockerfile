FROM kauplan/review2.5

RUN apt-get update && apt-get install -y ssh curl

# Node.js インストール
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# バージョン確認
RUN node -v
RUN npm -v
