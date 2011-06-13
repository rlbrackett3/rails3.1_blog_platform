require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.create(email: "admin@test.com", password: "password", password_confimation: "password")
  end

  # creating a new admin
  test 'should create a new admin object' do
    admin = Admin.new
    assert admin, "Failed to create a new Admin object."
  end

  # responding to attributes and methods
  test 'should respond to name' do
    assert @admin.name, "No such attr or method, name."
  end

  test 'should respond to email' do
    assert @admin.email, "No such attr or method, email."
  end

  test 'should respond to encrypted_password' do
    assert @admin.encrypted_password, "No such attr or method, encrypted_password."
  end

  #attribute security
    # attr_accessible
    # attr_protected

  # validations

end
