# -*- coding: utf-8 -*-
# = hg18/affytxnphase3fragsu87mg.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# his track displays transcriptome data from tiling GeneChips produced by Affymetrix.
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class AffyTxnPhase3FragsU87MG < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'affyTxnPhase3FragsU87MG'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
