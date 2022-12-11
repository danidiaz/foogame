{-# LANGUAGE OverloadedStrings #-}
module Main where

import SDL
import Control.Monad (unless)

main :: IO ()
main = do
  initializeAll
  window <- createWindow "My SDL Application" defaultWindow
  let rendererConfig = defaultRenderer
  renderer <- createRenderer window (-1) rendererConfig
  appLoop renderer
  destroyWindow window
  quit

appLoop :: Renderer -> IO ()
appLoop renderer = do
  events <- pollEvents
  let eventIsQPress event =
        case eventPayload event of
          KeyboardEvent keyboardEvent ->
            keyboardEventKeyMotion keyboardEvent == Pressed &&
            keysymKeycode (keyboardEventKeysym keyboardEvent) == KeycodeQ
          _ -> False
      qPressed = any eventIsQPress events
  rendererDrawColor renderer $= V4 0 0 255 255
  clear renderer
  -- https://stackoverflow.com/questions/63759688/sdl-renderpresent-implementation
  present renderer
  unless qPressed (appLoop renderer)