require "./spec_helper"

describe "CoreExt" do
  describe "blank?" do
    assert { "#{0xa0.chr}".blank?.should be_true }
    assert { "\t\n".blank?.should be_true }
    assert { " ".blank?.should be_true }
    assert { "a".blank?.should be_false }
    assert { "a ".blank?.should be_false }
    assert { "".blank?.should be_true }
    assert { "\t\n #{0xa0.chr} ".blank?.should be_true }
    assert { "\t\n #{0xa0.chr}1".blank?.should be_false }

    assert { nil.blank?.should be_true }
    assert { 1.blank?.should be_false }
    assert { [1].blank?.should be_false }
    assert { ([] of Int32).blank?.should be_true }

    assert { {1 => 2}.blank?.should be_false }
    assert { ({} of Int32 => String).blank?.should be_true }
  end

  describe "present?" do
    assert { "#{0xa0.chr}".present?.should be_false }
    assert { "\t\n".present?.should be_false }
    assert { " ".present?.should be_false }
    assert { "a".present?.should be_true }
    assert { "a ".present?.should be_true }
    assert { "".present?.should be_false }
    assert { "\t\n #{0xa0.chr} ".present?.should be_false }
    assert { "\t\n #{0xa0.chr}1".present?.should be_true }

    assert { nil.present?.should be_false }
    assert { 1.present?.should be_true }
    assert { [1].present?.should be_true }
    assert { ([] of Int32).present?.should be_false }

    assert { {1 => 2}.present?.should be_true }
    assert { ({} of Int32 => String).present?.should be_false }
  end

end
