import std.stdio;
import derelict.sdl2.sdl;


const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 640;

SDL_Window* gWindow = null;

SDL_Surface* gScreenSurface = null;

bool init()
{
    SDL_Init( SDL_INIT_VIDEO );
    gWindow = SDL_CreateWindow("sample", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    gScreenSurface = SDL_GetWindowSurface( gWindow);

    return true;
}


void main()
{
    DerelictSDL2.load();

    init();
    SDL_Quit();

    return;

}
