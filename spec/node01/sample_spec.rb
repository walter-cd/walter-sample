require 'spec_helper'

describe port(8080) do
  it { should be_listening }
end
