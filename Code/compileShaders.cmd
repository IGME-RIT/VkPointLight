..\Bin\glslangValidator.exe -V cube.vert -o cube.vert.spv
..\Bin\glslangValidator.exe -V cube.frag -o cube.frag.spv
..\Bin\spirv-opt --strip-debug cube.vert.spv -o cube2.vert.spv
..\Bin\spirv-opt --strip-debug cube.frag.spv -o cube2.frag.spv
bin2hex --i cube2.vert.spv --o cube.vert.inc
bin2hex --i cube2.frag.spv --o cube.frag.inc
del cube.vert.spv
del cube.frag.spv
del cube2.vert.spv
del cube2.frag.spv

..\Bin\glslangValidator.exe -V sky.vert -o sky.vert.spv
..\Bin\glslangValidator.exe -V sky.frag -o sky.frag.spv
..\Bin\spirv-opt --strip-debug sky.vert.spv -o sky2.vert.spv
..\Bin\spirv-opt --strip-debug sky.frag.spv -o sky2.frag.spv
bin2hex --i sky2.vert.spv --o sky.vert.inc
bin2hex --i sky2.frag.spv --o sky.frag.inc
del sky.vert.spv
del sky.frag.spv
del sky2.vert.spv
del sky2.frag.spv

pause