require 'spec_helper'

describe "gdb" do
  let(:facts) { default_test_facts }

  it do
    should contain_package('homebrew/dupes/gdb')
  end
end
