require 'bio-ucsc'
describe "Bio::Ucsc::Hg18::KgProtMap2" do 

  describe "#find_by_interval" do
    context "given range chr1:1-100,000" do
      it 'returns an record (r.tName == "chr1")' do
        Bio::Ucsc::Hg18::DBConnection.default
        Bio::Ucsc::Hg18::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-100,000")
        r = Bio::Ucsc::Hg18::KgProtMap2.find_by_interval(i)
        r.tName.should == "chr1"
      end
    end
  end

end
