require 'spec_helper'

describe 'mou' do
  it do
    should contain_package('Mou').with({
      :provider => 'compressed_app',
      :source   => 'http://mouapp.com/download/Mou.zip'
    })
  end
end