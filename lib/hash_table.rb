require 'benchmark'

class HashTable
  attr_accessor :hashTable

  def initialize value
    @hashTable = Array.new(value)
  end

  def get key
    if @hashTable[hash(key)] == nil
      return nil
    end
    # puts @hashTable[hash(key)].search(key)
    return @hashTable[hash(key)].search(key)
  end

  def set key, value
    if key.is_a? String
      index = hash(key)
      if @hashTable[index] == nil
        @hashTable[index] = HashList.new(key, value)
      else
        @hashTable[index].insert(key, value)
      end
    else
      raise "key must be a string"
    end
  end

  def remove key
    if @hashTable[hash(key)] == nil
      return nil
    end
    @hashTable[hash(key)].remove(key)
  end

  def hash key
    index = ((key.chars.first.ord * 3) + (key.chars.last.ord * key.chars.last.ord)) % @hashTable.length
    return index
  end
end

class HashNode
  attr_accessor :value, :key, :nxt

  def initialize key, value
    @key = key
    @value = value
    @nxt = nil
  end
end

class HashList
  attr_accessor :head

  def initialize key, value
    @head = HashNode.new(key, value)
  end

  def insert key, value
    newNode = HashNode.new(key, value)
    newNode.nxt = @head
    @head = newNode
  end

  def search key
    node = @head
    while node != nil
      if node.key != key
        node = node.nxt
      else
        return node.value
      end
    end
    return nil
  end

  def remove key
    check = @head
    if check.key == key
      @head = check.nxt
      return key
    end
    check = @head.nxt
    prevNode = @head
    while check != nil
      if check.key == key
        prevNode.nxt = check.nxt
        return check.value
      end
      check = check.nxt
      prevNode = prevNode.nxt
    end
    return nil
  end
end


words = {}
File.open("/usr/share/dict/words") do |file|
  file.each do |line|
    words[line.strip] = true
  end
end
puts "Total words to load: " + words.length.to_s
Benchmark.bm do |x|

  ht = HashTable.new(100)

  x.report('Load  Full Table 100') {
    words.each do |werd|
      ht.set(werd.first.to_s, werd.first.reverse.to_s)
    end
  }
  x.report('Fetch Full Table 100') {
    words.each do |werd|
      ht.get(werd.first.to_s)
    end
  }
  puts "\n"

  ht = HashTable.new(1024)

  x.report('Load  Full Table 1024') {
    words.each do |werd|
      ht.set(werd.first.to_s, werd.first.reverse.to_s)
    end
  }
  x.report('Fetch Full Table 1024') {
    words.each do |werd|
      ht.get(werd.first.to_s)
    end
  }
  puts "\n"

  ht = HashTable.new(4096)

  x.report('Load  Full Table 4096') {
    words.each do |werd|
      ht.set(werd.first.to_s, werd.first.reverse.to_s)
    end
  }
  x.report('Fetch Full Table 4096') {
    words.each do |werd|
      ht.get(werd.first.to_s)
    end
  }
  puts "\n"

  ht = HashTable.new(8186)

  x.report('Load  Full Table 8186') {
    words.each do |werd|
      ht.set(werd.first.to_s, werd.first.reverse.to_s)
    end
  }
  x.report('Fetch Full Table 8186') {
    words.each do |werd|
      ht.get(werd.first.to_s)
    end
  }
end
