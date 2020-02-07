# FunctionalProgramming.in

The code for functionalprogramming.in

There are two apps in this project:

1. **API server** at the root `./`
1. **Client UI** in `client/` directory.


## Local Deployment

### Install NPM packages

```bash
git clone https://github.com/fpindia/functionalprogramming.in.git
cd functionalprogramming.in/
npm install
cd client
npm install
```

### Run Dev Server

```bash
npm run dev
```

This will:

  * Build both the server and client code.
  * Start dev-servers for both the server and client code.
  * The client app is configured to proxy backend requests to the local Node server. (See [`"proxy"` config](client/package.json))
  * Open a browser window the client dev-server URL.


## Heroku Deployment

Create a heroku app.

```bash
heroku create
```

Or attach an existing app.

```bash
heroku git:remote -a <your app>
```

Push to Heroku to deploy.

```bash
git push heroku master
```

This deployment will automatically:

  * detect [Node buildpack](https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-nodejs)
  * build the app with
    * `npm install` for the Node server
    * `npm run build` for create-react-app
  * launch the web process with `npm start`
    * serves `../client/build/` as static files
    * customize by adding API, proxy, or route handlers/redirectors

👓 More about [deploying to Heroku](https://devcenter.heroku.com/categories/deployment).
