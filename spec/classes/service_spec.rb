require 'spec_helper'

describe 'sophos::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      it { is_expected.to contain_class('sophos::service') }
      it { is_expected.to contain_service('com.sophos.agent') }
      it { is_expected.to contain_service('com.sophos.common.servicemanager') }
      it { is_expected.to contain_service('com.sophos.endpoint.uiserver') }
    end
  end
end
