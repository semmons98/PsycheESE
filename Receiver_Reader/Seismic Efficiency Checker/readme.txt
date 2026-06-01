As described in part 2 of the PsycheESE guide, when discussing the source files,
you should ensure your seismic source is entirely within the asteroid mesh.
An easy way to check this is to check the seismic efficiency.
If it is multiple orders of magnitude less than you expect, likely part of your source is dissipating off into space. 
This python script checks the seismic efficiency of your impact. 
Make sure to adjust the input energy and the number of sample points (the max_rows= part of the load function) to fit you project.
It is likely you will not get an exact value depending on the number of sample points used,
but you can use this for order of magnitude estimates
