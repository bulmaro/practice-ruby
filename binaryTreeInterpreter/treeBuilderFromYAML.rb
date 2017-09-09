require 'yaml'

$DEBUG = false
y = YAML.load_file("sample/bin-tree.yaml")

class Node
	attr_accessor :value
	attr_accessor :left
	attr_accessor :right
end

def nodeFromHash(hash)
	node = Node.new
	node.value = hash['val']
	hash['left'] == nil ? node.left = nil : node.left = nodeFromHash(hash['left'])
	hash['right'] == nil ? node.right = nil : node.right = nodeFromHash(hash['right'])


#	if hash['left'] != nil
#		node.left = nodeFromHash(hash['left'])
#	else
#		node.left = hash['left']
#	end

#	if hash['right'] != nil
#		node.right = hash['right']
#	else
#		node.right = hash['right']
#	end
	if $DEBUG
		puts "node value = #{node.value}"
		puts "node left = #{node.left}"
		puts "node right = #{node.right}"
	end

	return node
end

p y
n = nodeFromHash(y)
p n
