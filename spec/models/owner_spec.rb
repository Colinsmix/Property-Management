require 'spec_helper'

describe Owner do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }

  it { should have_valid(:email).when('example@example.com', 'cs-2@yahoo.com') }
  it { should_not have_valid(:email).when('bob', 123, 'hello.com') }

  it { should have_valid(:first_name).when('John','Sally') }
  it { should_not have_valid(:first_name).when('R2D2',123 ) }

  it { should have_valid(:last_name).when('John','Sally') }
  it { should_not have_valid(:last_name).when('R2D2',123 ) }


end
