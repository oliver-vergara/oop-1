class Task
  attr_accessor :name, :complete, :priority

  def initialize(name, priority)
    @name = name
    @priority = priority
    @complete = false

  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = !@complete
  end

  # def set_priority(priority)
  #   @priority = priority
  # end
end