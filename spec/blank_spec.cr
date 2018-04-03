require "./spec_helper"

describe "CoreExt" do
  describe "blank?" do
    it { "#{0xa0.chr}".blank?.should be_true }
    it { "\t\n".blank?.should be_true }
    it { " ".blank?.should be_true }
    it { "a".blank?.should be_false }
    it { "a ".blank?.should be_false }
    it { "".blank?.should be_true }
    it { "\t\n #{0xa0.chr} ".blank?.should be_true }
    it { "\t\n #{0xa0.chr}1".blank?.should be_false }

    it { nil.blank?.should be_true }
    it { 1.blank?.should be_false }
    it { [1].blank?.should be_false }
    it { ([] of Int32).blank?.should be_true }

    it { {1 => 2}.blank?.should be_false }
    it { ({} of Int32 => String).blank?.should be_true }
  end

  describe "present?" do
    it { "#{0xa0.chr}".present?.should be_false }
    it { "\t\n".present?.should be_false }
    it { " ".present?.should be_false }
    it { "a".present?.should be_true }
    it { "a ".present?.should be_true }
    it { "".present?.should be_false }
    it { "\t\n #{0xa0.chr} ".present?.should be_false }
    it { "\t\n #{0xa0.chr}1".present?.should be_true }

    it { nil.present?.should be_false }
    it { 1.present?.should be_true }
    it { [1].present?.should be_true }
    it { ([] of Int32).present?.should be_false }

    it { {1 => 2}.present?.should be_true }
    it { ({} of Int32 => String).present?.should be_false }
  end
end
