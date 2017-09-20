class Item
  @@list = []

  attr_accessor :name

  def initialize(namex)
    @name = namex
  end

  def self.all()
    @@list
  end

  def save
    @@list.push(self)
  end
end
