@[Link(ldflags: "-L. -ladd")]
lib LibAdd
  fun add(a : Int32, b : Int32) : Int32
end

a = 3
b = 5
puts "#{a} + #{b} = #{LibAdd.add(a, b)}"
