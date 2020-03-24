# get the last vertion of node
FROM node:latest
# select the the work folder
WORKDIR /app
# copy the depencencies file .json
COPY package.json yarn.lock ./
# execute the file to download the depencencies
RUN yarn
# copy all the app in the work folder
COPY . .

COPY env.example.yaml env.yaml
# set the default cmd to execute our container

# Expose application port
EXPOSE 80

CMD ["yarn", "start"]