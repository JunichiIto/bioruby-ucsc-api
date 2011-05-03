# -*- coding: utf-8 -*-
# = hg19/wgencodesunyalbanytilinggm12878ripinputrbpassocrna.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# This track is produced as part of the ENCODE Project. This track
# displays transcriptional fragments associated with RNA binding
# proteins in different cell lines, using RIP-Chip (Ribonomic)
# profiling on Affymetrix GeneChip ENCODE 2.0R Tiling Arrays. The RBP
# Assoc RNA view shows the genomic location of transcripts associated
# with the array probes. Data for this track was produced as part of
# the Encyclopedia of DNA Elements (ENCODE) Project.
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg19
      class WgEncodeSunyAlbanyTilingGm12878RipinputRbpAssocRna < DBConnection
        extend Bio::Ucsc::Hg19::QueryUsingChromBin
        set_table_name 'wgEncodeSunyAlbanyTilingGm12878RipinputRbpAssocRna'
        set_primary_key nil
      end 
    end # module Hg19
  end # module Ucsc
end # Bio
