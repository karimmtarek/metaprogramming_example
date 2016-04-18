class Computer
  attr_reader :id, :data_source

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    component :mouse
  end

  def cpu
    component :cpu
  end

  def keyboard
    component :keyboard
  end

  def memory
    component :memory
  end

  def motherboard
    component :motherboard
  end

  def storage
    component :storage
  end

  private

  def component(name)
    info = data_source.send("get_#{name}_info", id)
    price = data_source.send("get_#{name}_price", id)
    "#{name.capitalize}: ​#{info}​ ($​#{price}​)"
  end
end
