require 'bio-ucsc'
describe "Bio::Ucsc::Hg19::WgEncodeSunyAlbanyGeneStK562SlbpRbpAssocRna" do 

  describe "#find_by_interval" do
    context "given range chr1:1-30,000,000" do
      it 'returns a record (r.chrom == "chr1")' do
        Bio::Ucsc::Hg19::DBConnection.default
        Bio::Ucsc::Hg19::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-30,000,000")
        r = Bio::Ucsc::Hg19::WgEncodeSunyAlbanyGeneStK562SlbpRbpAssocRna.find_by_interval(i)
        r.chrom.should == "chr1"
      end
    end
  end

end
