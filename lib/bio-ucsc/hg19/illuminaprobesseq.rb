# -*- coding: utf-8 -*-
# = hg19/illuminaprobesseq.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# This track displays the probes from the Illumina WG-6 3.0 BeadChip. 
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg19
      class IlluminaProbesSeq < DBConnection
        set_table_name 'illuminaProbesSeq'
        set_primary_key nil
      end 
    end # module Hg19
  end # module Ucsc
end # Bio
