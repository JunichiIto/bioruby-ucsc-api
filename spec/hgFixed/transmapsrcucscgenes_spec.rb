require 'bio-ucsc'
describe "Bio::Ucsc::HgFixed::TransMapSrcUcscGenes" do 

  describe "#find_by_interval" do
    context "given range chr1:1-10,000" do
      it "returns an array of results" do
        Bio::Ucsc::HgFixed::DBConnection.default
        Bio::Ucsc::HgFixed::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-10,000")
        r = Bio::Ucsc::HgFixed::TransMapSrcUcscGenes.find_all_by_interval(i)
        r.should have(25).items
      end

      it 'returns (r.chrom == "chr1")' do
        Bio::Ucsc::HgFixed::DBConnection.default
        Bio::Ucsc::HgFixed::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-10,000")
        r = Bio::Ucsc::HgFixed::TransMapSrcUcscGenes.find_by_interval(i)
        r.chrom.should == "chr1"
      end
    end
  end

end
