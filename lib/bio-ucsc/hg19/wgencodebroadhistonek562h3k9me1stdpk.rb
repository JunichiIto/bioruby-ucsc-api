# -*- coding: utf-8 -*-
# = hg19/wgencodebroadhistonek562h3k9me1stdpk.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# This track displays maps of chromatin state generated by the
# Broad/MGH ENCODE group using ChIP-seq. Chemical modifications
# (methylation, acetylation) to the histone proteins present in
# chromatin influence gene expression by changing how accessible the
# chromatin is to transcription. 
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg19
      class WgEncodeBroadHistoneK562H3k9me1StdPk < DBConnection
        extend Bio::Ucsc::Hg19::QueryUsingChromBin
        set_table_name 'wgEncodeBroadHistoneK562H3k9me1StdPk'
        set_primary_key nil
      end 
    end # module Hg19
  end # module Ucsc
end # Bio
