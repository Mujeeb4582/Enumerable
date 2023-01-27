class MyList
  attr_reader :list

  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter(&:even?)
