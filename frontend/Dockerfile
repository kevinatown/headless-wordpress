FROM node

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /home/node/app

# Installing dependencies
COPY package*.json ./
RUN yarn install

# Copying source files
COPY . .

EXPOSE 80

# Building app
RUN yarn build

# Running the app
CMD [ "yarn", "start" ]