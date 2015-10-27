feature "Hash table storage" do
  ht = HashTable.new(26)

  scenario "Can create a new hash table" do
    tt = HashTable.new(26)

    assert_true tt.get(Test)
  end

  scenario "Can insert a new hash-key pair, returns null if key is not a string" do
    ht.set("Test", "This is a test")

    assert_true ht.get("Test") == "This is a test"
    assert_false ht.get("West")
  end

  scenario "Values can be fetched a value using its key, nil if the pair deosnt exist" do
    ht.set("Testing", "This is testing")
    ht.set("Best", "This is the best")
    ht.set("west", "This is a directoin")


    assert_true ht.get("Test") == "This is a test"
    assert_true ht.get("West") == "This is a direction"
  end

  scenario "Can delete a key-value pair" do
    assert_true ht.remove("Best") == "This is a direction"
  end
end
