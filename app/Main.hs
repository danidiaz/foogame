{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NamedFieldPuns #-}
module Main where

import SDL
import Control.Monad (unless)
import Foreign.C

main :: IO ()
main = do
  initializeAll
  let windowInitialSize = V2 1000 800
  let center = (`div` 2) <$> windowInitialSize
  let figure = P center `Rectangle` V2 100 100
  window <- createWindow "My SDL Application" defaultWindow { windowInitialSize }
  let rendererConfig = defaultRenderer
  renderer <- createRenderer window (-1) rendererConfig
  appLoop renderer figure
  destroyWindow window
  quit

appLoop :: Renderer -> Rectangle CInt -> IO ()
appLoop renderer figure = do
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
  rendererDrawColor renderer $= V4 0 255 0 255
  drawRect renderer $ Just figure
  -- https://stackoverflow.com/questions/63759688/sdl-renderpresent-implementation
  present renderer
  unless qPressed (appLoop renderer figure)