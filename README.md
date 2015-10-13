Insertion Sort

This Repository has been REPURPOSED as a general data structures test repository

#Sort, Insertion

To test this method in a stand-alone enviornment run it using irb in your console.

This method takes in an array and returns a sorted array arranged from highest to lowest, helpful for organising scores or leaderboards.
The sort method iterates through the array by pulling a value from the array then iterating backwards comparing the extracted value to the rest of the array under the assumption that when it iterates backwards after extraction its iterating trough the part of the array that is already sorted. This allows the method to stop and insert the extracted value as soon as it finds a higher value instead of having to check every value before it.

example:

    sort( [12, 215, 233, 42, 16, 87, 2, 9] )

    returns:  [233, 215, 87, 42, 16, 12, 9, 2]


#Linked List

This has 2 classes:

  Node Class, with "value," and "next" variables

  List Class, with "head" variable
    methods:

    to_s: prints the entire list with the format (value) --> (value) --> (value) --> etc

    insert(value): adds a new node to the head of the list with value

    search(value): looks through the list and returns the positions of all nodes with that value or returns nil if there is none found with the specified values

    remove(value): looks through each node and removes any with the specified value


#Merge Sort

   methods merge sort and merge work together to divide the array into smaller and smaller arrays then orders and recombines all elements back into a single array

#Stack and Queue

  Data Structure featuring Last-in, First-out and First-in, First-out respectively

#Binary Tree

  Binary tree creates a tree of nodes each with a left and a right component. When a new tree is instantiaed it starts blank and the first value passed in will be set as @head.

  my method for adding new nodes (called BinaryNodes) is rather flexible. the method entree takes in a value (which is the actually value you want that node to represent within the tree), a interger named afterIndex (this allows the node to be inserted into the tree besides at the head), and a bool called forceRight (which gives a bit more flexibility).

    so if afterIndex is left '0' the new node willbe inserted as the new head. with forceRight as false the old @head will be loaded into new nodes left slot, if forceRight is true then old @head will be linked into the new nodes right slot.

    afterIndex allows for insertion into the tree. If this value is 3, for example, the new node will be inserted between the 3rd and 4th node down the far left side of the tree. In this case if forceRight is true it will insert down the right side of the tree.
