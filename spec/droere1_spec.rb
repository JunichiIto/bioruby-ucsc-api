require "bio-ucsc"
require "pp"

describe "Bio::Ucsc::DroEre1" do

  before(:all) do
    Bio::Ucsc::DroEre1::DBConnection.connect
  end

  describe "Bio::Ucsc::DroEre1::All_mrna" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::All_mrna.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Author" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Author.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::BlastDm2FB" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::BlastDm2FB.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Cds" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Cds.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Cell" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Cell.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::ChainDm3" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::ChainDm3.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::ChainDm3Link" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::ChainDm3Link.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::ChromInfo" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::ChromInfo.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Description" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Description.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Development" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Development.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Gap" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Gap.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbCdnaInfo" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbCdnaInfo.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbDelete_tmp" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbDelete_tmp.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbExtFile" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbExtFile.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbLoaded" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbLoaded.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbMiscDiff" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbMiscDiff.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbSeq" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbSeq.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbStatus" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbStatus.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GbWarn" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GbWarn.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Gc5Base" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Gc5Base.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GeneMapper" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GeneMapper.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GeneName" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GeneName.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Genscan" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Genscan.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::GenscanPep" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::GenscanPep.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Gold" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Gold.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Grp" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Grp.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::HgFindSpec" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::HgFindSpec.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::History" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::History.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::ImageClone" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::ImageClone.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Keyword" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Keyword.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Library" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Library.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::MrnaClone" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::MrnaClone.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::MrnaOrientInfo" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::MrnaOrientInfo.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::NetDm3" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::NetDm3.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Organism" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Organism.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::ProductName" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::ProductName.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::RefLink" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::RefLink.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::RefSeqStatus" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::RefSeqStatus.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::RefSeqSummary" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::RefSeqSummary.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Rmsk" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Rmsk.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Sex" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Sex.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::SimpleRepeat" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::SimpleRepeat.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Source" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Source.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::TableDescriptions" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::TableDescriptions.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::Tissue" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::Tissue.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::TrackDb" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::TrackDb.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::XenoMrna" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::XenoMrna.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::XenoRefFlat" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::XenoRefFlat.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::XenoRefGene" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::XenoRefGene.first
        pp result
        result.should be_true
      end
    end
  end 

  describe "Bio::Ucsc::DroEre1::XenoRefSeqAli" do
    context ".first" do
      it 'returns the first records' do
        result = Bio::Ucsc::DroEre1::XenoRefSeqAli.first
        pp result
        result.should be_true
      end
    end
  end 

end
