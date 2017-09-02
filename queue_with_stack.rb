class Qs
  def initialize
    @eStack = []
    @dStack = []
  end

  def enqueue(val)
    @eStack << val
  end

  def dequeue
    # if the dStack is empty, then we need to dump the eStack onto it.
    if @dStack.empty?
      #dump eStack here
      while ! @eStack.empty?
        @dStack << @eStack.pop
      end
    end
    return @dStack.pop
  end
end
