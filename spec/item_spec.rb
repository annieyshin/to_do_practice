require 'item'

describe('Item') do
  describe(".all") do
    it("is empty at first") do
      expect(Item.all).to(eq([]))
    end
  end
end
