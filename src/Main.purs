module Main where

import Prelude hiding (apply)

import Effect (Effect)
import Effect.Console (log)
import Node.Express.App (App, get, listenHttp, use)
import Node.Express.Handler (Handler)
import Node.Express.Middleware.Static (static)
import Node.Express.Response (sendJson)
import Node.HTTP (Server)

foreign import _port :: Int
foreign import _isDev :: Boolean

apiHandler :: Handler
apiHandler = do
  sendJson {message: "Hello from the API!"}

app :: App
app = do
  -- Priority serve client app artifacts
  use $ static "./client/build"
  -- API Requests
  get "/api" apiHandler
  -- The "catchall" handler: all remaining requests
  -- send the UI's main index.html file.
  -- get "*" $ sendFile "./client/build/index.html"

main :: Effect Server
main = do
    listenHttp app _port \_ ->
        log $ "Listening on " <> show _port
