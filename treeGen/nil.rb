require 'yaml'

$tree = nil

y = $tree.to_yaml
File.open(File.basename(__FILE__, '.rb') + ".yaml","w"){ |f| f.write(y) }
