# -*- coding: utf-8 -*-
# = hg19/sestanbrainatlas.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# This track displays exon microarray expression data from the late
# mid-fetal human brain, generated by the Sestan Lab at Yale
# University. The data represent 13 brain regions, including nine
# areas of neocortex, and both hemispheres. By default, arrays are
# grouped by the median for each brain region, including each
# neocortical area. Alternatively, neocortex areas can be grouped
# together; arrays can be grouped by mean; or all 95 arrays can be
# shown individually.
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg19
      class SestanBrainAtlas < DBConnection
        extend Bio::Ucsc::Hg19::QueryUsingChromBin
        set_table_name 'sestanBrainAtlas'
        set_primary_key nil
      end 
    end # module Hg19
  end # module Ucsc
end # Bio
