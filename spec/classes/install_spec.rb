require 'spec_helper'

describe 'sophos::install' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params)  do
        {
          installer_source: 'https://example.com/sample.zip',
          installer_path: '/tmp',
          installer_name: 'SophosInstall.zip',
        }
      end

      let(:pre_condition) do
        'function archive::artifactory_checksum($url,$type) { return \'0d4f4b4b039c10917cfc49f6f6be71e4\' }'
      end

      it { is_expected.to compile }
      it { is_expected.to contain_class('sophos::install') }
    end
  end
end
