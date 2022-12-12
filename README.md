# Links

- [How to make the game run when using Nix in WSL2](https://hachyderm.io/@DiazCarrete/109496648438688786).

  > the solution was to use the "nixGLIntel" wrapper

  > nixGLIntel cabal run


- [SDL_RenderPresent()](https://wiki.libsdl.org/SDL2/SDL_RenderPresent). [SO question](https://stackoverflow.com/questions/63759688/sdl-renderpresent-implementation).

  > SDL's rendering functions operate on a backbuffer; that is, calling a rendering function such as SDL_RenderDrawLine() does not directly put a line on the screen, but rather updates the backbuffer. As such, you compose your entire scene and present the composed backbuffer to the screen as a complete picture.
  
  > Therefore, when using SDL's rendering API, one does all drawing intended for the frame, and then calls this function once per frame to present the final drawing to the user.
  
  > The backbuffer should be considered invalidated after each present; do not assume that previous contents will exist between frames. You are strongly encouraged to call SDL_RenderClear() to initialize the backbuffer before starting each new frame's drawing, even if you plan to overwrite every pixel.
  
- [Lazy Foo' Productions - Beginning Game Programming v2.0](https://lazyfoo.net/tutorials/SDL/)