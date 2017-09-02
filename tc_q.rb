require_relative "queue_with_stack.rb"
require "test/unit"
 
class TestQueueWithStack < Test::Unit::TestCase
  def test_simple
    q = Qs.new
    q.enqueue(1)

    assert_equal(1, q.dequeue())
  end
end

