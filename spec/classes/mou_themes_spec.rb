require 'spec_helper'

describe 'mou::themes' do
  let(:facts) { default_test_facts }

  let(:moudir) { "/Users/testuser/Library/Application Support/Mou" }
  let(:cssdir) { "#{moudir}/CSS" }
  let(:themesdir) { "#{moudir}/Themes" }

  it do
    should contain_file(moudir).with_ensure('directory')

    should contain_file(cssdir).with({
      :ensure  => 'directory',
      :source  => 'puppet:///modules/mou/CSS',
      :purge   => false,
      :recurse => true,
    })

    should contain_file(themesdir).with({
      :ensure  => 'directory',
      :source  => 'puppet:///modules/mou/Themes',
      :purge   => false,
      :recurse => true,
    })

  end
end