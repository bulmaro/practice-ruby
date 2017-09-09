require 'yaml'

$tree = { 
  'val' => 20,
  'left' => nil,
  'right' => nil
}

y = $tree.to_yaml
File.open(File.basename(__FILE__, '.rb') + ".yaml","w"){ |f| f.write(y) }
