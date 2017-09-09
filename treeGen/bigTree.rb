require 'yaml'

$tests = { 
  'val' => 20,
  'left' => {
    'val' => 15,
    'left' => {
      'val' => 10,
      'left' => {
        'val' => 5,
        'left' => nil,
        'right' => nil
      },
      'right' => {
        'val' => 11,
        'left' => nil,
        'right' => nil
      }
    },
    'right' => {
      'val' => 21,
      'left' => nil,
      'right' => nil
    }
  },
  'right' => {
    'val' => 25,
    'left' => {
      'val' => 24,
      'left' => nil,
      'right' => nil
    },
    'right' => {
      'val' => 30,
      'left' => {
        'val' => 26,
        'left' => nil,
        'right' => nil
      },
      'right' => {
        'val' => 50,
        'left' => nil,
        'right' => nil
      }
    }
  }
}

y = $tests.to_yaml
File.open(File.basename(__FILE__, '.rb') + ".yaml","w"){ |f| f.write(y) }
