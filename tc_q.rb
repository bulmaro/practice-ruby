require_relative "queue_with_stack.rb"
require "test/unit"
 
class TestQueueWithStack < Test::Unit::TestCase
  def test_e1d1
    q = Qs.new
    q.enqueue(1)

    assert_equal(1, q.dequeue())
  end

  def test_e0d1
    q = Qs.new
    assert_equal(nil, q.dequeue())
  end

  def test_e3d3
    q = Qs.new
    q.enqueue(1)
    q.enqueue(3)
    q.enqueue(4)
    assert_equal(1, q.dequeue())
    assert_equal(3, q.dequeue())
    assert_equal(4, q.dequeue())
  end

  def test_e5d1e3d5
    q = Qs.new
    q.enqueue(2)
    q.enqueue(4)
    q.enqueue(6)
    q.enqueue(8)
    q.enqueue(10)
    assert_equal(2, q.dequeue())
    q.enqueue(12)
    q.enqueue(14)
    q.enqueue(16)
    assert_equal(4, q.dequeue())
    assert_equal(6, q.dequeue())
    assert_equal(8, q.dequeue())
    assert_equal(10, q.dequeue())
    assert_equal(12, q.dequeue())
    assert_equal(14, q.dequeue())
  end

  def test_empty_d
    q = Qs.new
    assert_equal(nil, q.dequeue())
  end
end

