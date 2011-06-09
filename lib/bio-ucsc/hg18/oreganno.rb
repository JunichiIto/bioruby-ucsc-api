# -*- coding: utf-8 -*-
# = hg18/oreganno.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# This track displays literature-curated regulatory regions,
# transcription factor binding sites, and regulatory polymorphisms
# from ORegAnno (Open Regulatory Annotation). For more detailed
# information on a particular regulatory element, follow the link to
# ORegAnno from the details page.
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class Oreganno < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'oreganno'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio