require 'rails_helper'

RSpec.describe IncreasingDecreasingNumber do
  describe "#count" do
    it "should return 1 for number = 0" do
      count = described_class.new(0).count

      expect(count).to eq(1)
    end

    it "should return 10 for number = 1" do
      count = described_class.new(1).count

      expect(count).to eq(10)
    end

    it "should return 100 for number = 2" do
      count = described_class.new(2).count

      expect(count).to eq(100)
    end

    it "should return 475 for number = 3" do
      count = described_class.new(3).count

      expect(count).to eq(475)
    end

    it "should return 1675 for number = 4" do
      count = described_class.new(4).count

      expect(count).to eq(1675)
    end

    it "should return 4954 for number = 5" do
      count = described_class.new(5).count

      expect(count).to eq(4954)
    end

    it "should return 12952 for number = 6" do
      count = described_class.new(6).count

      expect(count).to eq(12952)
    end
  end
end