To implement lights, all we need to do is edit cube.frag,
and nothing else. Although, I altered Demo.cpp slightly to
adjust the camera and the paths that the cat and dog follow,
but that was optional. The light is hard-coded into the 
fragment shader, but you can pass it from C++ to GLSL with
a uniform buffer, and then the light can move. The shader
was almost exactly copied and pasted from our OpenGL tutorial,
it is very simple: Get the direction from the pixel to the
light, use the dot product of that direction and the normal,
multiply that by the light color, and add it to the texture
color. One thing that had to change was the MVP matrices
were replaced with seperate projection, view, and model
matrices. This was required so that we could multiply 
the vertex normal by the model matrix. Small changes around
Demo.cpp and Entity.cpp can be seen for these changes
