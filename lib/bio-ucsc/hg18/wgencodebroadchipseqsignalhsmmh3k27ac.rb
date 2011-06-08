# -*- coding: utf-8 -*-
# = hg18/wgencodebroadchipseqsignalhsmmh3k27ac.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# Enhanced H3K27Ac - ENCODE Enhancer- and Promoter-Associated Histone
# Mark (H3K27Ac) on 8 Cell Lines
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class WgEncodeBroadChipSeqSignalHsmmH3k27ac < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'wgEncodeBroadChipSeqSignalHsmmH3k27ac'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
