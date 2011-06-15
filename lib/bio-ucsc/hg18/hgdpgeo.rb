# -*- coding: utf-8 -*-
# = hg18/hgdpgeo.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# This track shows the 657,000 SNPs genotyped in 53 populations
# worldwide by the Human Genome Diversity Project in collaboration
# with the Centre d'Etude du Polymorphisme Humain (HGDP-CEPH). This
# track and several others are available from the HGDP Selection
# Browser.

#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class HgdpGeo < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'hgdpGeo'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio