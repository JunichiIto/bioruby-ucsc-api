# -*- coding: utf-8 -*-
# = hg18/wgencodehudsonalphamethylseqregionsrep2hepg2pcr2x.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# HAIB Methyl-seq - ENCODE HudsonAlpha Methyl-seq
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class WgEncodeHudsonalphaMethylSeqRegionsRep2Hepg2Pcr2x < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'wgEncodeHudsonalphaMethylSeqRegionsRep2Hepg2Pcr2x'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
