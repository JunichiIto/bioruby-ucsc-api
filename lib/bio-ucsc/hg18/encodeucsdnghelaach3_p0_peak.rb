# -*- coding: utf-8 -*-
# = hg18/encodeucsdnghelaach3_p0_peak.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# LI Ng gIF ChIP - Ludwig Institute/UCSD ChIP-chip NimbleGen - Gamma
# Interferon Experiments
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class EncodeUcsdNgHeLaAcH3_p0_peak < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'encodeUcsdNgHeLaAcH3_p0_peak'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio