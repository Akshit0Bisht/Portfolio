# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy your Node.js server file to the container
COPY app.js ./

# Create a directory for your portfolio files in the container
#RUN mkdir -p /usr/src/app/Portfolio

# Copy your portfolio files into the container
COPY . .

RUN npm install express
# Expose the port your app will run on
EXPOSE 3000

# Start the Node.js application
CMD ["node", "app.js"]
