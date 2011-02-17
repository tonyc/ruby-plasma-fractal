#!/usr/bin/env ruby -wKU

require 'lib/plasma_fractal'

fractal = PlasmaFractal.new(:size => 9, :height_seed => 100)
fractal.generate!
fractal.display_height_map