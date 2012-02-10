require 'bio-ucsc'
describe "Bio::Ucsc::Hg19::XenoRefFlat" do 

  describe "#find_by_interval" do
    context "given range chr1:1-15,000" do
      it 'returns (r.chrom == "chr1")' do
        Bio::Ucsc::Hg19::DBConnection.default
        Bio::Ucsc::Hg19::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-15,000")
        r = Bio::Ucsc::Hg19::XenoRefFlat.find_by_interval(i)
        r.chrom.should == "chr1"
      end
    end
  end

end
