# -*- coding: utf-8 -*-
# = hg19/all_bacends.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# This track depicts gaps in the assembly. These gaps - with the
# exception of intractable heterochromatic gaps - will be closed
# during the finishing process.
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg19
      class All_bacends < DBConnection
        extend Bio::Ucsc::Hg19::QueryUsingTBin
        set_table_name 'all_bacends'
        set_primary_key nil
      end 
    end # module Hg19
  end # module Ucsc
end # Bio