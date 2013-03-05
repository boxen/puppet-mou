class mou {
  package { 'Mou':
    source   => 'http://mouapp.com/download/Mou.zip',
    provider => 'compressed_app'
  }
}