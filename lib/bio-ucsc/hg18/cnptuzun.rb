#
# = hg18/cnptuzun.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
#  Copyright (C) 2008 Jan Aerts <jan.aerts@gmail.com>
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# Structural Var - Structural Variation 
#

module Bio
  module Ucsc
    module Hg18
      class CnpTuzun < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'cnpTuzun'
                        
        set_primary_key nil
      end
    end
  end
end
