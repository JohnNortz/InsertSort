class Stack
  require 'linked_list' #for code to use node class

  def initialize(data)
    @head = Node.new(data)
  end

  def pop
    popped = @head
    if popped
      @head = @head.next
      return popped
    else raise "Nothing on Stack to Pop"
  end

  def push(data)
    newNode = Node.new(data)
    newNode.next = @head
    @head = newNode
  end

end
