# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bio-ucsc-api}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["MISHIMA, Hiroyuki", "Francesco Strozzi", "Jan Aerts"]
  s.date = %q{2011-04-22}
  s.description = %q{A Bioruby plugin: an API for UCSC Genome Browser}
  s.email = %q{missy@be.to}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "COPYING",
    "COPYING.ja",
    "Gemfile",
    "Gemfile.lock",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bio-ucsc-api.gemspec",
    "lib/bio-ucsc.rb",
    "lib/bio-ucsc/hg18.rb",
    "lib/bio-ucsc/hg18/activerecord.rb",
    "lib/bio-ucsc/hg18/cnpiafrate2.rb",
    "lib/bio-ucsc/hg18/cnplocke.rb",
    "lib/bio-ucsc/hg18/cnpredon.rb",
    "lib/bio-ucsc/hg18/cnpsebat2.rb",
    "lib/bio-ucsc/hg18/cnpsharp2.rb",
    "lib/bio-ucsc/hg18/db_connection.rb",
    "lib/bio-ucsc/hg18/dgv.rb",
    "lib/bio-ucsc/hg18/refgene.rb",
    "lib/bio-ucsc/hg18/rmsk.rb",
    "lib/bio-ucsc/hg18/tables.rb",
    "lib/bio-ucsc/hg19.rb",
    "lib/bio-ucsc/hg19/activerecord.rb",
    "lib/bio-ucsc/hg19/ccdsgene.rb",
    "lib/bio-ucsc/hg19/cytoband.rb",
    "lib/bio-ucsc/hg19/db_connection.rb",
    "lib/bio-ucsc/hg19/dgv.rb",
    "lib/bio-ucsc/hg19/ensgene.rb",
    "lib/bio-ucsc/hg19/gwascatalog.rb",
    "lib/bio-ucsc/hg19/hapmapalleleschimp.rb",
    "lib/bio-ucsc/hg19/hapmapallelesmacaque.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsasw.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsceu.rb",
    "lib/bio-ucsc/hg19/hapmapsnpschb.rb",
    "lib/bio-ucsc/hg19/hapmapsnpschd.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsgih.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsjpt.rb",
    "lib/bio-ucsc/hg19/hapmapsnpslwk.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsmex.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsmkk.rb",
    "lib/bio-ucsc/hg19/hapmapsnpstsi.rb",
    "lib/bio-ucsc/hg19/hapmapsnpsyri.rb",
    "lib/bio-ucsc/hg19/knowngene.rb",
    "lib/bio-ucsc/hg19/omimgene.rb",
    "lib/bio-ucsc/hg19/phastconselements46wayprimates.rb",
    "lib/bio-ucsc/hg19/phylop46wayprimates.rb",
    "lib/bio-ucsc/hg19/refgene.rb",
    "lib/bio-ucsc/hg19/rmsk.rb",
    "lib/bio-ucsc/hg19/snp131.rb",
    "lib/bio-ucsc/hg19/snp132.rb",
    "lib/bio-ucsc/hg19/snp132codingdbsnp.rb",
    "lib/bio-ucsc/hg19/snp132common.rb",
    "lib/bio-ucsc/hg19/snp132flagged.rb",
    "lib/bio-ucsc/hg19/snp132mult.rb",
    "lib/bio-ucsc/hg19/wgrna.rb",
    "lib/bio-ucsc/ucsc_bin.rb",
    "samples/hg19-sample.rb",
    "spec/hg18/cnpiafrate2_spec.rb",
    "spec/hg18/cnplocke_spec.rb",
    "spec/hg18/cnpredon_spec.rb",
    "spec/hg18/cnpsebat2_spec.rb",
    "spec/hg18/cnpsharp2_spec.rb",
    "spec/hg18/db_connection_spec.rb",
    "spec/hg18/dgv_spec.rb",
    "spec/hg18/refgene_spec.rb",
    "spec/hg18/rmsk_spec.rb",
    "spec/hg19/ccdsgene_spec.rb",
    "spec/hg19/cytoband_spec.rb",
    "spec/hg19/db_connection_spec.rb",
    "spec/hg19/dgv_spec.rb",
    "spec/hg19/ensgene_spec.rb",
    "spec/hg19/gwascatalog_spec.rb",
    "spec/hg19/hapmapalleleschimp_spec.rb",
    "spec/hg19/hapmapallelesmacaque_spec.rb",
    "spec/hg19/hapmapsnpsasw_spec.rb",
    "spec/hg19/hapmapsnpsceu_spec.rb",
    "spec/hg19/hapmapsnpschb_spec.rb",
    "spec/hg19/hapmapsnpschd_spec.rb",
    "spec/hg19/hapmapsnpsgih_spec.rb",
    "spec/hg19/hapmapsnpsjpt_spec.rb",
    "spec/hg19/hapmapsnpslwk_spec.rb",
    "spec/hg19/hapmapsnpsmex_spec.rb",
    "spec/hg19/hapmapsnpsmkk_spec.rb",
    "spec/hg19/hapmapsnpstsi_spec.rb",
    "spec/hg19/hapmapsnpsyri_spec.rb",
    "spec/hg19/knowngene_spec.rb",
    "spec/hg19/omimGene_spec.rb",
    "spec/hg19/phastconselements46wayprimates_spec.rb",
    "spec/hg19/phyloP46wayPrimates_spec.rb",
    "spec/hg19/refgene_spec.rb",
    "spec/hg19/rmsk_spec.rb",
    "spec/hg19/snp132Flagged_spec.rb",
    "spec/hg19/snp132_spec.rb",
    "spec/hg19/snp132codingdbsnp_spec.rb",
    "spec/hg19/snp132common_spec.rb",
    "spec/hg19/snp132mult_spec.rb",
    "spec/hg19/wgrna_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/misshie/bioruby-ucsc-api}
  s.licenses = ["Ruby (Ruby's/GPLv2 dual)"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Bioruby plugin: an API for UCSC Genome Browser}
  s.test_files = [
    "spec/hg18/cnpiafrate2_spec.rb",
    "spec/hg18/cnplocke_spec.rb",
    "spec/hg18/cnpredon_spec.rb",
    "spec/hg18/cnpsebat2_spec.rb",
    "spec/hg18/cnpsharp2_spec.rb",
    "spec/hg18/db_connection_spec.rb",
    "spec/hg18/dgv_spec.rb",
    "spec/hg18/refgene_spec.rb",
    "spec/hg18/rmsk_spec.rb",
    "spec/hg19/ccdsgene_spec.rb",
    "spec/hg19/cytoband_spec.rb",
    "spec/hg19/db_connection_spec.rb",
    "spec/hg19/dgv_spec.rb",
    "spec/hg19/ensgene_spec.rb",
    "spec/hg19/gwascatalog_spec.rb",
    "spec/hg19/hapmapalleleschimp_spec.rb",
    "spec/hg19/hapmapallelesmacaque_spec.rb",
    "spec/hg19/hapmapsnpsasw_spec.rb",
    "spec/hg19/hapmapsnpsceu_spec.rb",
    "spec/hg19/hapmapsnpschb_spec.rb",
    "spec/hg19/hapmapsnpschd_spec.rb",
    "spec/hg19/hapmapsnpsgih_spec.rb",
    "spec/hg19/hapmapsnpsjpt_spec.rb",
    "spec/hg19/hapmapsnpslwk_spec.rb",
    "spec/hg19/hapmapsnpsmex_spec.rb",
    "spec/hg19/hapmapsnpsmkk_spec.rb",
    "spec/hg19/hapmapsnpstsi_spec.rb",
    "spec/hg19/hapmapsnpsyri_spec.rb",
    "spec/hg19/knowngene_spec.rb",
    "spec/hg19/omimGene_spec.rb",
    "spec/hg19/phastconselements46wayprimates_spec.rb",
    "spec/hg19/phyloP46wayPrimates_spec.rb",
    "spec/hg19/refgene_spec.rb",
    "spec/hg19/rmsk_spec.rb",
    "spec/hg19/snp132Flagged_spec.rb",
    "spec/hg19/snp132_spec.rb",
    "spec/hg19/snp132codingdbsnp_spec.rb",
    "spec/hg19/snp132common_spec.rb",
    "spec/hg19/snp132mult_spec.rb",
    "spec/hg19/wgrna_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.7"])
      s.add_runtime_dependency(%q<mysql>, [">= 2.8.1"])
      s.add_runtime_dependency(%q<bio-genomic-interval>, [">= 0.1.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<bio>, [">= 1.4.1"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<bio-genomic-interval>, [">= 0.1.1"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.7"])
      s.add_dependency(%q<mysql>, [">= 2.8.1"])
      s.add_dependency(%q<bio-genomic-interval>, [">= 0.1.2"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<bio>, [">= 1.4.1"])
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<bio-genomic-interval>, [">= 0.1.1"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.7"])
    s.add_dependency(%q<mysql>, [">= 2.8.1"])
    s.add_dependency(%q<bio-genomic-interval>, [">= 0.1.2"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<bio>, [">= 1.4.1"])
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<bio-genomic-interval>, [">= 0.1.1"])
  end
end

