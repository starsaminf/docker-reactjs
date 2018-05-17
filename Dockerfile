FROM node:8.11.1
RUN npm install -g -y create-react-app
CMD ["npm", "start"]
