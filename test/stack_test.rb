feature "Inserting nodes into stack" do
  scenario "inserting a value adds node to head" do
    a = Stack.new(12)
    a.push(5)
    a.head.must_include 5
  end
end

feature "pop nodes in a stack" do
  scenario "poping existing value returns hits" do
    a = Stack.new(2)
    a.push(5)
    a.push(10)

    assert_true a.pop == 10
  end

  scenario "pop returns nil if no hits" do
    a = Stack.new

    assert_nil a.search(12)
  end
end
