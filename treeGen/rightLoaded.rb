require 'yaml'

$tree = { 
  'val' => 10,
  'right' => {
    'val' => 25,
    'right' => {
      'val' => 30,
      'left' => nil,
      'right' => nil
    },
    'left' => nil
  },
  'left' => nil
}

y = $tree.to_yaml
File.open(File.basename(__FILE__, '.rb') + ".yaml","w"){ |f| f.write(y) }
