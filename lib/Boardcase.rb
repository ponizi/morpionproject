class Boardcase
  def cases
    arrayj1 = []
    arrayj2 = []
    array_empty = []
    @j1.each do |i| arrayj1 << "x" end
    @j2.each do |i| arrayj2 << "o" end
    j1_symbols = Hash[@j1.zip(arrayj1)]
    j2_symbols = Hash[@j2.zip(arrayj2)]
    empty = @cases - @j1 - @j2
    empty.each do |i| array_empty << " " end
    empty_symbols = Hash[empty.zip(array_empty)]
    @symbols = j1_symbols.merge(j2_symbols).merge(empty_symbols)
  end
end