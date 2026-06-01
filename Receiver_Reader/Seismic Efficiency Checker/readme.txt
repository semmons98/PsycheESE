As described in part 2 of the PsycheESE guide, when discussing the source files,
you should ensure your seismic source is entirely within the asteroid mesh.

An easy way to check this is to check the seismic efficiency.

To do so, make sure you have a receiver located at the location of your seismic source,
you can then run that receiver's data through this python script.

If the seismic efficiency is multiple orders of magnitude less than you expect, likely part of your source is dissipating off into space.

Make sure to adjust the input energy and the number of sample points (the max_rows= part of the load function) to fit you project.

It is likely you will not get an exact value depending on the number of sample points used,
but you can use this for order of magnitude estimates

If you want to check the seismic efficiency without running an entire simulation, you can adjust the parameters.par file to
only run the first epoch or two of the simulation. 

Note that this python script was adapted from an older version of the SeisSol_Receiver_Reader.py script.
