require 'spec_helper'

describe Building do
  it { should validate_presence_of :street_address }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :postal_code }

  it { should have_valid(:state).when('NY','PA') }
  it { should_not have_valid(:state).when('12','FFF','F') }

  it { should have_valid(:postal_code).when('12345','12333') }
  it { should_not have_valid(:postal_code).when('1234','zebra','$$$$$') }
  

end
