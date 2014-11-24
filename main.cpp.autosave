#include <iostream>
#include <SDL2/SDL.h>

#include "gl_core_4_0.hpp"


int main(int argc, char *argv[])
{
    SDL_Window* window = SDL_CreateWindow("OpenGL Test", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 800, 600, SDL_WINDOW_OPENGL | SDL_WINDOW_SHOWN);
    SDL_GLContext openglContext;

    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);

    openglContext = SDL_GL_CreateContext(window);

    gl::exts::LoadTest loadTest = gl::sys::LoadFunctions();
    if(!loadTest)
    {
        std::cout << "Could not load opengl extensions... aborting...." << std::endl;
        return 1;
    }

    std::cout << "Opengl extensions loaded at version " << gl::sys::GetMajorVersion() << "." << gl::sys::GetMinorVersion() << std::endl;

    SDL_Event e;

    bool running = true;

    while(running)
    {
        while(SDL_PollEvent(&e))
        {
            if(e.type == SDL_QUIT)
            {
                running = false;
            }
        }

        gl::ClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        gl::Clear(gl::COLOR_BUFFER_BIT);

        SDL_GL_SwapWindow(window);
    }

    SDL_GL_DeleteContext(openglContext);
    SDL_DestroyWindow(window);

    return 0;
}

