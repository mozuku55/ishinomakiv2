# 使用するNode.jsのバージョンを指定します
FROM node:14

# アプリケーションのディレクトリを作成し、作業ディレクトリとして設定します
WORKDIR /app

# アプリケーションの依存関係をコピーし、パッケージをインストールします
COPY package*.json ./
RUN npm install

# 必要なnpmパッケージをインストールします
RUN npm install @azure/cosmos debug body-parser cookie-parser express morgan pug serve-favicon dotenv

# アプリケーションのソースコードをコピーします
COPY . .

# アプリケーションを起動します
CMD [ "node", "ExpressApp1/app.js" ]