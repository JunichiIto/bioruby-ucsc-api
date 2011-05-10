#
# = hg19/omimgenemap.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# This track shows the positions of canonical UCSC genes that have
# been associated with identifiers in the Online Mendelian Inheritance
# in Man (OMIM) database. The associations were obtained from RefSeq
# and UniProt annotations. To simplify the track, annotations on
# splice variants have been collapsed so that only canonical UCSC
# splice variants are displayed.
#

module Bio
  module Ucsc
    module Hg19
      class OmimGeneMap < DBConnection
        extend Bio::Ucsc::Hg19::QueryUsingChromBin
        set_table_name 'omimGeneMap'
        set_primary_key nil
      end
    end
  end
end
