Diamond-square algorithm for terrain generation
===============================================

This is a port of M. Jessup's Java implementation of the diamond-square algorithm to ruby.
It also includes Chris Hadley's changes to the algorithm per the StackOverflow thread below.

Essentially generates a 2d array of values that can be used for height values in a terrain.

<pre>
  require 'lib/plasma_fractal'
  fractal = PlasmaFractal.new(:size => 9, :height_seed => 100)
  fractal.generate!
  fractal.display_height_map
</pre>

<pre>
  100      99     115     108     101     117     128     122     100
   99     108     108     101     112     114     111     117      99
  122     107     117     114      89     101     119     124     122
  114     102     114     104      85     105     113     120     114
   96     102     108      96      89      91      99      98      96
  102     112     107     112     117     101      95      98     102
  106      91      95     116     118     110     106     112     106
   99      99     114     116     114     116     121     109      99
  100      99     115     108     101     117     128     122     100
</pre>

The values are currently converted using to_i for display, so it's not 100% ready for use, if you 
want all the floating-point accuracy, it should be pretty easy to get at the data needed.

Read more:
----------

  * <a href="http://stackoverflow.com/questions/2755750/diamond-square-algorithm">http://stackoverflow.com/questions/2755750/diamond-square-algorithm</a>
  * <a href="http://www.gameprogrammer.com/fractal.html#diamond">http://www.gameprogrammer.com/fractal.html#diamond</a>
  * <a href="http://danielbeard.wordpress.com/2010/08/07/terrain-generation-and-smoothing/">http://danielbeard.wordpress.com/2010/08/07/terrain-generation-and-smoothing/</a>
  * <a href="http://www.javaworld.com/javaworld/jw-08-1998/jw-08-step.html?page=2">http://www.javaworld.com/javaworld/jw-08-1998/jw-08-step.html?page=2</a>
