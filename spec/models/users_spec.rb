require 'spec_helper'

describe User do
	it { should validate_uniqueness_of(:email) }
	it { should validate_presence_of(:email) }
end