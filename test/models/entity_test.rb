require "test_helper"

class EntityTest < ActiveSupport::TestCase
  def setup
    @entity = Entity.new(name: 'John',)
  end
  test "test name validation" do
    refute @entity.valid?, 'saved user without a name'
  end
end
