require 'yaml'

$tree = { 
  'val' => 10,
  'left' => {
    'val' => 20,
    'left' => {
      'val' => 40,
      'left' => nil,
      'right' => nil
    },
    'right' => {
        'val' => 50,
        'left' => nil,
        'right' => nil
    }
  },
  'right' => {
    'val' => 30,
    'left' => {
      'val' => 60,
      'left' => nil,
      'right' => nil
    },
    'right' => {
      'val' => 70,
      'left' => nil,
      'right' => nil
    }
  }
}

y = $tree.to_yaml
File.open(File.basename(__FILE__, '.rb') + ".yaml","w"){ |f| f.write(y) }
