require 'spec_helper'

describe 'mou::config' do
  let(:facts) { default_test_facts }

  let(:plistfile) { '/Users/testuser/Library/Preferences/com.mouapp.Mou.plist' }

  let(:theme) { 'Custom Test Theme (Dark)+' }
  let(:css) { 'TestStyle' }

  it do
    should contain_property_list_key('Mou Theme').with({
      :path => plistfile,
      :key => 'selectedThemeKeyString',
      :value => 'Custom Test Theme (Dark)+',
    })

    should contain_property_list_key('Mou CSS').with({
      :path => plistfile,
      :key => 'selectedCSSKeyString',
      :value => 'TestStyle',
    })
  end
end