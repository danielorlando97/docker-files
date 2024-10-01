###################
# BUILD FOR LOCAL DEVELOPMENT
###################

FROM node As development

# Create app directory
WORKDIR /usr/src/app

COPY --chown=node:node package*.json ./
COPY --chown=node:node yarn.lock ./

# Set PUPPETEER_SKIP_DOWNLOAD, avoiding to install puppeteer binary
ENV PUPPETEER_SKIP_DOWNLOAD true

RUN yarn install --frozen-lockfile

# Bundle app source
COPY --chown=node:node . .

# Use the node user form the image (instead of the root user)
USER node

###################
# PRODUCTION
###################

FROM node As production

# Copy the bundled code from the build stage to the production image
COPY --from=development /usr/src/app/ ./

RUN apt-get update \
    && apt-get install -y wget gnupg \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf libxss1 \
      --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Start the server using the production build
CMD [ "node", "app" ]
