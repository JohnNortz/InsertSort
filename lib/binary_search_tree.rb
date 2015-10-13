class BinaryTree
  attr_accessor :head

  def initialize
    @head = nil
  end

  def entree (value, afterIndex, forceRight)
    newNode = BinaryNode.new(value)
    if @head == nil || afterIndex == 0
      if @head != nil
        newNode.left = @head
      end
      @head = newNode
      return value
    end

    prevNode = @head
    currentNode = @head
    afterIndex.times do |y|
      if forceRight
        if currentNode.right != nil
          prevNode = currentNode
          currentNode = currentNode.right
        else
          currentNode.right = newNode
          newNode.left = nil
          newNode.right = nil
          return newNode.value
        end
      else
        if currentNode.left != nil
          prevNode = currentNode
          currentNode = currentNode.left
        else
          currentNode.left =newNode
          newNode.left = nil
          newNode.right = nil
          return newNode.value
        end
      end
    end

    newNode.left = newNode.right = nil
    if forceRight
      prevNode.right = newNode
      newNode.right = currentNode
      return newNode.value
    else
      prevNode.left = newNode
      newNode.left = currentNode
      return newNode.value
    end
  end

  def pre_to_s(node)
    return if node == nil
    puts node.value.to_s
    pre_to_s(node.left)
    pre_to_s(node.right)
  end

  def post_to_s(node)
    return if node == nil
    pre_to_s(node.left)
    pre_to_s(node.right)
    puts node.value.to_s
  end

  def order_to_s(node)
    return if node == nil
    pre_to_s(node.left)
    puts node.value.to_s
    pre_to_s(node.right)
  end
end

class BinaryNode
  attr_accessor :left, :right, :value

  def initialize (value)
    @value = value
    @left = nil
    @right = nil
  end
end
