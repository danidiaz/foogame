# Links

- [How to make the game run when using Nix in WSL2](https://hachyderm.io/@DiazCarrete/109496648438688786).

  > the solution was to use the "nixGLIntel" wrapper

  > nixGLIntel cabal run


- [SDL_RenderPresent()](https://wiki.libsdl.org/SDL2/SDL_RenderPresent). [SO question](https://stackoverflow.com/questions/63759688/sdl-renderpresent-implementation).

  > SDL's rendering functions operate on a backbuffer; that is, calling a rendering function such as SDL_RenderDrawLine() does not directly put a line on the screen, but rather updates the backbuffer. As such, you compose your entire scene and present the composed backbuffer to the screen as a complete picture.
  
  > Therefore, when using SDL's rendering API, one does all drawing intended for the frame, and then calls this function once per frame to present the final drawing to the user.
  
  > The backbuffer should be considered invalidated after each present; do not assume that previous contents will exist between frames. You are strongly encouraged to call SDL_RenderClear() to initialize the backbuffer before starting each new frame's drawing, even if you plan to overwrite every pixel.
  
- [Lazy Foo' Productions - Beginning Game Programming v2.0](https://lazyfoo.net/tutorials/SDL/)

- [Game Loop - Game Programming Patterns](https://gameprogrammingpatterns.com/game-loop.html)

- [Fix your timestep (2004)](https://gafferongames.com/post/fix_your_timestep/)

- [In SDL, what is the difference between using a Surfaces and a Renderer?](https://gamedev.stackexchange.com/questions/180077/in-sdl-what-is-the-difference-between-using-a-surfaces-and-a-renderer)

  > Essentially, SDL_Surface is a tool for CPU side blit rendering, where as SDL_Renderer takes advantage of hardware acceleration, and performs the rendering on the GPU. SDL_Renderer provides an abstraction over several APIs and even offers a fallback CPU-side implementation if no other implementation suits your platform (unlikely).

- [SDL2 on Game Development SE](https://gamedev.stackexchange.com/questions/tagged/sdl?tab=Votes)

- [Game loop on Game Development SE](https://gamedev.stackexchange.com/questions/tagged/game-loop?tab=Votes)

