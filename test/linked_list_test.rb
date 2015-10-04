feature "Inserting nodes into list" do
  scenario "inserting a value adds node to head" do
    a = List.new
    a.insert(5)
    a.head.must_include 5
  end
end

feature "Removing nodes from list" do
  scenario "removing a value removes node from list" do
    a = List.new
    a.insert(5)
    a.insert(10)
    a.insert(15)
    a.insert(20)

    a.remove(10)
    a.to_s.wont_include 10
  end
end

feature "Searching nodes in a list" do
  scenario "searching a list returns hits" do
    a = List.new
    a.insert(5)
    a.insert(10)
    a.insert(15)
    a.insert(20)

    assert_true a.search(10)
  end

  scenario "searching a list returns nil if no hits" do
    a = List.new
    a.insert(5)
    a.insert(10)
    a.insert(15)
    a.insert(20)

    assert_nil a.search(12)
  end
end
