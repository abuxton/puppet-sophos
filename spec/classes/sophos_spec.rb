require 'spec_helper'

describe 'sophos' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      it { is_expected.to contain_class('sophos') }
      it { is_expected.to contain_class('sophos::install') }
      it { is_expected.to contain_class('sophos::service') }
    end
  end
end
