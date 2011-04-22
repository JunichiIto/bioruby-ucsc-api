#
# = hg19/phylop46wayprimate.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table description in UCSC Table Browser This track shows multiple
# alignments of 46 vertebrate species and measurements of evolutionary
# conservation using two methods (phastCons and phyloP) from the PHAST
# package, for all species (vertebrate) and two subsets (primate and
# placental mammal). The multiple alignments were generated using
# multiz and other tools in the UCSC/Penn State Bioinformatics
# comparative genomics alignment pipeline. Conserved elements
# identified by phastCons are also displayed in this track.
#

module Bio
  module Ucsc
    module Hg19
      class PhyloP46wayPrimates < DBConnection
        extend Bio::Ucsc::Hg19::QueryUsingChromBin
        set_table_name 'phyloP46wayPrimates'
        set_primary_key nil
       end
    end
  end
end
