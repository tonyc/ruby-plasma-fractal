#!/usr/bin/env ruby -wKU

require 'lib/terrain_generator'

tg = TerrainGenerator.new(:size => 9, :height_seed => 100)
tg.generate!
tg.display_map