import std.stdio;
import derelict.sdl2.sdl;


const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 640;

SDL_Window gWindow;

SDL_Surface gHelloWorld;

bool init()
{
    SDL_Init( SDL_INIT_VIDEO );
    gWindow = 


void main()
{
    DerelictSDL2.load();

    SDL_Init(SDL_INIT_VIDEO);

    SDL_Window* window = SDL_CreateWindow("Test", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 800, 600, SDL_WINDOW_SHOWN);

    screenSurface = SDL_GetWindowSurface(window);

    bool running = true;

    while( running )
    {
        SDL_Event e;

        while (SDL_PollEvent(&e))
        {
            switch (e.type)
            {
                case SDL_KEYDOWN, SDL_QUIT:
                    running = false;
                    break;

                default:
                    break;
            }

            SDL_FillRect( screenSurface, NULL, SDL_MapRGB( screenSurface.format, 0xFF, 0xFF, 0xFF ));
            SDL_UpdateWindowSurface( window);


        }
    }
    SDL_DestroyWindow(window);
    SDL_Quit();

    return;

}
