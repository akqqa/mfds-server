{-# LANGUAGE OverloadedStrings #-}

module MFDS.WebApp where

import Network.Wai qualified as Wai
import Network.Wai.Application.Static
import Network.Wai.Handler.Warp
import System.Environment (getEnv)

runWebServer :: IO ()
runWebServer = do
  port <- read @Int <$> getEnv "WEB_APP_PORT"
  runSettings
    (setHost "127.0.0.1" $ setPort port defaultSettings)
    webApp

webApp :: Wai.Application
webApp = staticApp $ defaultFileServerSettings "public"