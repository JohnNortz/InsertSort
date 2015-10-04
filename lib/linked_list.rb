class Node
  #Node in a linked list
  attr_accessor :value, :next

  def initialize(value)
    @value = value || 0
  end
end

class List
  attr_accessor :head

  def initialize(value)
    @head = Node.new(value)
  end

  def to_s
    nextNode = head.next
    str = 'Head: (' + head.value.to_s + ')'
    while nextNode != nil
      str += ' --> (' + nextNode.value.to_s + ')'
      nextNode = nextNode.next
    end
    puts str
  end

  def search(value)
    get = nil
    numberInList = 1
    nextNode = @head
    while nextNode != nil && !get
      if nextNode.value != value
        nextNode = nextNode.next
        numberInList += 1
      else
        return "Number " + numberInList.to_s + " node has value " + value.to_s if nextNode.value == value
      end
    end
    return get
  end

  def remove(value)
    check = @head
    if check.value == value
      @head = check.next
      puts "removed node with value " + value.to_s + " at head"
    end
    check = @head.next
    prevNode = @head
    iterator = 2
    while check != nil
      if check.value == value
        prevNode.next = check.next
        puts "removed node with value " + value.to_s + " at position " + iterator.to_s
      end
      check = check.next
      prevNode = prevNode.next
      iterator += 1
    end
  end

  def insert(value)
    newNode = Node.new(value)
    newNode.next = @head
    @head = newNode
    self.to_s
  end
end
