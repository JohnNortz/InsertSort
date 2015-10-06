feature "merge_sort successfully sorts array" do
  scenario "merge_sort sorts array" do
    assert_true merge_sort([2, 45, 34, 22, 12, 31, 4]) == [2, 4, 12, 22, 31, 34, 45]
  end
end

feature "merge sort calls exception when bad imput" do
  scenario "merge sort return exception when nil imput" do
    merge_sort([])
    assert_raised "Nothing to sort"
end
