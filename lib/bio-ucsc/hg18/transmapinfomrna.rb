# -*- coding: utf-8 -*-
# = hg18/transmapinfomrna.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# genomeDB information about transMap alignments
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class TransMapInfoMRna < DBConnection
        set_table_name 'transMapInfoMRna'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio