feature "Inserting data into queue" do
  scenario "inserting a value adds node to head" do
    a = Queue.new(12)
    a.enqueue(5)

    assert_true a.first == 12

    a.dequeue

    assert_true a.first == 5
  end
end

feature "dequeue data in a queue" do
  scenario "dequeue existing queue returns data removed" do
    a = Queue.new(2)
    a.enqueue(5)
    a.enqueue(10)

    assert_true a.dequeue == 2
  end

  scenario "dequeue returns nil if nothing in queue" do
    a = Queue.new(2)
    a.dequeue
    a.dequeue

    assert_raised "Nothing in Queue"
  end
end
