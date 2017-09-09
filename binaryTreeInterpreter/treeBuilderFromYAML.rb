require 'yaml'

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

	if $DEBUG
		puts "node value = #{node.value}"
		puts "node left = #{node.left}"
		puts "node right = #{node.right}"
	end

	return node
end

if $0 == __FILE__ # If file is invoked by itself
	y = YAML.load_file("sample/full.yaml")

	p y
	n = nodeFromHash(y)
	p n
end
