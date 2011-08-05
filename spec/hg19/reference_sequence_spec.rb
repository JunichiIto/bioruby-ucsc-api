require 'bio-ucsc'

describe "Bio::Ucsc::Hg19::ReferenceSequence" do 
  
  describe ".load" do
    context 'given "../samples/hg19.2bit"' do
      it "returns true" do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
      end
    end
  end

  describe ".header.signarue" do
    context 'given "../samples/hg19.2bit"' do
      it "returns 0x1A412743" do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        Bio::Ucsc::Hg19::ReferenceSequence.header.signature.should == 0x1A412743
      end
    end
  end

  describe ".header.version" do
    context 'given "../samples/hg19.2bit"' do
      it "returns 0" do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        Bio::Ucsc::Hg19::ReferenceSequence.header.version.should == 0
      end
    end
  end

  describe ".header.sequence_count" do
    context 'given "../samples/hg19.2bit"' do
      it "returns 0x5d" do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        Bio::Ucsc::Hg19::ReferenceSequence.header.sequence_count.should == 0x5d
      end
    end
  end

  describe '.offsets["chr1"]' do
    context 'given "../samples/hg19.2bit"' do
      it "returns 0x0687" do 
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        Bio::Ucsc::Hg19::ReferenceSequence.offsets["chr1"].should == 0x0687
      end
    end
  end

  describe ".records" do
    context 'given "chr1"' do
      it 'returns (TwoBitRecord.reserved == 0)' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        Bio::Ucsc::Hg19::ReferenceSequence.records("chr1").reserved == 0
      end
    end
  end

  describe ".records" do
    context 'given "chr1"' do
      it 'returns (TwoBitRecord.dna_size == 249_250_621)' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        Bio::Ucsc::Hg19::ReferenceSequence.records("chr1").dna_size.should == 249_250_621
      end
    end
  end

  describe ".byte_to_nucleotides" do
    context 'given 0b00011011' do
      it 'returns "TCAG"' do
        r = Bio::Ucsc::Hg19::ReferenceSequence.byte_to_nucleotides(0b00011011)
        r.should == "TCAG"
      end
    end
  end

  describe ".bytes_to_nucleotides" do
    context 'given [0b00011011, 0b11100100]' do
      it 'returns "TCAGGACT"' do
        ary = [0b00011011, 0b11100100]
        r = Bio::Ucsc::Hg19::ReferenceSequence.bytes_to_nucleotides(ary)
        r.should == "TCAGGACT"
      end
    end
  end

  describe ".find_by_interval_raw" do
    context "given range chr1:1,000,000-1,000,030" do
      it 'returens "TGGGCACAGCCTCACCCAGGAAAGCAGCTGG"' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        itv = Bio::GenomicInterval.parse("chr1:1,000,000-1,000,030")
        r = Bio::Ucsc::Hg19::ReferenceSequence.find_by_interval_raw(itv)
        r.should == "TGGGCACAGCCTCACCCAGGAAAGCAGCTGG"
      end
    end

    context "given range chr2:1,123,456-1,123,499" do
      it 'returens "GTACTTAGAACACTATTGATTTCTGTACGTTGATTTTGTATTCT"' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        itv = Bio::GenomicInterval.parse("chr2:1,123,456-1,123,499")
        r = Bio::Ucsc::Hg19::ReferenceSequence.find_by_interval_raw(itv)
        r.should == "GTACTTAGAACACTATTGATTTCTGTACGTTGATTTTGTATTCT"
      end
    end

    context "given range chr2:1,123,456-1,123,456" do
      it 'returens "G"' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        itv = Bio::GenomicInterval.parse("chr2:1,123,456-1,123,456")
        r = Bio::Ucsc::Hg19::ReferenceSequence.find_by_interval_raw(itv)
        r.should == "G"
      end
    end
  end

 describe ".find_by_interval" do
    context "given range chr1:9,980-10,020" do
      it 'returns "NNNNNNNNNNNNNNNNNNNNNTAACCCTAACCCTAACCCTA"' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        itv = Bio::GenomicInterval.parse("chr1:9,980-10,020")
        r = Bio::Ucsc::Hg19::ReferenceSequence.find_by_interval(itv)
        r.should == "NNNNNNNNNNNNNNNNNNNNNTAACCCTAACCCTAACCCTA"
      end
    end
    
    # N-block => chr1:267,720-317,719
    context "given range chr1:267,690-267,735" do
      it 'returns "GGGACTACAGGCGCCCGCATCCAGCTGGATNNNNNNNNNNNNNNNN' do
        Bio::Ucsc::Hg19::ReferenceSequence.load("samples/hg19.2bit")
        itv = Bio::GenomicInterval.parse("chr1:267,690-267,735")
        r = Bio::Ucsc::Hg19::ReferenceSequence.find_by_interval(itv)
        r.should == "GGGACTACAGGCGCCCGCATCCAGCTGGATNNNNNNNNNNNNNNNN"
      end
    end
  end
end

  