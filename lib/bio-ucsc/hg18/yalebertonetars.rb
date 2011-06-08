# -*- coding: utf-8 -*-
# = hg18/yalebertonetars.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table description in UCSC Table Browser
# This track shows the locations of transcriptionally active regions
# (TARs)/transcribed fragments (transfrags) hybridized to an
# oligonucleotide microarray with a design based on human assembly
# hg13 (NCBI Build 31) (Bertone et al., 2004).
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class YaleBertoneTars < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingTBin
        set_table_name 'yaleBertoneTars'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
