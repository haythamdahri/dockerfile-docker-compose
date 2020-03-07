FROM node:latest
# Set /app as working dirctory
WORKDIR /app
# Copy project to container
COPY crm-firebase/package*.json /app/
COPY crm-firebase/. /app/
# Install angular cli globally
RUN npm install -g @angular/cli
# Install project required modules locally
RUN npm install --save
# Expose 4200 as default port for accessibily from outside
EXPOSE 4200
# Set entrypoint for each start of web container
ENTRYPOINT [ "ng", "serve", "--host", "0.0.0.0"]
