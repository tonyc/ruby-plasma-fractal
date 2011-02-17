Diamond-square algorithm for terrain generation
===============================================

This is a port of M. Jessup's Java implementation of the diamond-square algorithm to ruby.
It also includes Chris Hadley's changes to the algorithm per the StackOverflow thread below.

Essentially generates a 2d array of values that can be used for height values in a terrain:

  require 'lib/terrain_generator'
  tg = TerrainGenerator.new(:size => 9, :height_seed => 100)
  tg.generate!
  tg.display_map

<pre>
  100.0    72.0    57.0    48.0    52.0    60.0    54.0    73.0   100.0
   92.0    81.0    66.0    49.0    37.0    36.0    44.0    65.0    92.0
   80.0    65.0    41.0    34.0    40.0    43.0    48.0    61.0    80.0
   59.0    44.0    43.0    37.0    42.0    41.0    43.0    44.0    59.0
   36.0    51.0    41.0    47.0    65.0    59.0    35.0    36.0    36.0
   56.0    60.0    53.0    58.0    67.0    60.0    54.0    47.0    56.0
   66.0    67.0    63.0    56.0    61.0    59.0    71.0    67.0    66.0
   80.0    69.0    66.0    60.0    69.0    69.0    66.0    74.0    80.0
  100.0    72.0    57.0    48.0    52.0    60.0    54.0    73.0   100.0
</pre>


Read more:
----------

  * http://stackoverflow.com/questions/2755750/diamond-square-algorithm
  * http://www.gameprogrammer.com/fractal.html#diamond
  * http://www.javaworld.com/javaworld/jw-08-1998/jw-08-step.html?page=2
