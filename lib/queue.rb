class Queue
  attr_accessor :size, :first, :last

  def initialize(value)
    @first = Que.new(value)
    @last = @first
    @size = 1
  end

  def size
    return @size
  end

  def enqueue value
    enque = Que.new(value)
    if @size != 0
      enque.next = @last
      @last.prev = enque
    end
    @last = enque
    @first = enque if size == 0
    @size += 1
  end

  def dequeue
    raise 'Nothing in Queue' if size == 0
    del = @first
    if @size != 1
      @first = @first.prev
      @first.next = nil
    end
    @size -= 1
    return del.value
  end

  def to_s
    s = "Queue has size: " + @size.to_s
    puts s
    s2 = "Full queue: "
    @look = @last
    while @look != nil
      s2 += "--> (" + @look.value.to_s + ")"
      @look = @look.next
    end
    puts s2
  end

end

class Que
  attr_accessor :value, :next, :prev

  def initialize value
    @value = value
  end
end

