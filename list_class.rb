require_relative 'enumerable'

class MyList
  include Enumerable

  def initialize(*items)
    @list = items
  end

  def each
    @list.each { |value| yield value if block_given? }
  end
end
