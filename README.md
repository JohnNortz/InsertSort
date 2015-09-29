Insertion Sort Method

To test this method in a stand-alone enviornment run it using irb in your console.

This method takes in an array and returns a sorted array arranged from highest to lowest, helpful for organising scores or leaderboards.
The sort method iterates through the array by pulling a value from the array then iterating backwards comparing the extracted value to the rest of the array under the assumption that when it iterates backwards after extraction its iterating trough the part of the array that is already sorted. This allows the method to stop and insert the extracted value as soon as it finds a higher value instead of having to check every value before it.

example:

    sort( [12, 215, 233, 42, 16, 87, 2, 9] )

    returns:  [233, 215, 87, 42, 16, 12, 9, 2]
