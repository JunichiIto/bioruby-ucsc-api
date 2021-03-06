require 'bio-ucsc'
describe "Bio::Ucsc::Hg19::OregannoAttr" do 

  describe "#find_all_by_id" do
    context 'given "OREG0000000"' do
      it 'returns an array of records' do
        Bio::Ucsc::Hg19::DBConnection.default
        Bio::Ucsc::Hg19::DBConnection.connect
        r = Bio::Ucsc::Hg19::OregannoAttr.find_all_by_id("OREG0000000")
        r.should have(3).items
      end
    end
  end

end
