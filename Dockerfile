# 使用するNode.jsのバージョンを指定します
FROM node:14

# アプリケーションのディレクトリを作成し、作業ディレクトリとして設定します
WORKDIR /app

# アプリケーションの依存関係をコピーし、パッケージをインストールします
COPY package*.json ./
RUN npm install

# 必要なnpmパッケージをインストールします
RUN npm install @azure/cosmos
RUN npm install debug
RUN npm install body-parser
RUN npm install cookie-parser
RUN npm install express
RUN npm install morgan
RUN npm install pug
RUN npm install serve-favicon
RUN npm install dotenv
RUN npm install node-fetch-commonjs

# アプリケーションのソースコードをコピーします
COPY . .

# アプリケーションを起動します
CMD [ "node", "ExpressApp1/app.js", "--experimental-fetch" ]