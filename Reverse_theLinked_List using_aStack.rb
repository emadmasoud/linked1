class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    return print "nil\n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.pop
# => 3
stack.pop
# => 2
stack.pop
# => 1
stack.pop
# => nil
def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)
    list = list.next_node
  end

  return stack.data
end
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "---------"
revlist = reverse_list(node3)
print_values(revlist)