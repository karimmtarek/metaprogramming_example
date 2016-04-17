class Computer
  attr_reader :id, :data_source

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    info = data_source.get_mouse_info(id)
    price = data_source.get_mouse_price(id)
    "Mouse: ​#{info}​ ($​#{price}​)"
  end

  def cpu
    info = data_source.get_cpu_info(id)
    price = data_source.get_cpu_price(id)
    "CPU: ​#{info}​ ($​#{price}​)"
  end

  def keyboard
    info = data_source.get_keyboard_info(id)
    price = data_source.get_keyboard_price(id)
    "Keyboard: ​#{info}​ ($​#{price}​)"
  end

  def memory
    info = data_source.get_memory_info(id)
    price = data_source.get_memory_price(id)
    "Memory: ​#{info}​ ($​#{price}​)"
  end

  def motherboard
    info = data_source.get_motherboard_info(id)
    price = data_source.get_motherboard_price(id)
    "Motherboard: ​#{info}​ ($​#{price}​)"
  end

  def storage
    info = data_source.get_storage_info(id)
    price = data_source.get_storage_price(id)
    "Storage: ​#{info}​ ($​#{price}​)"
  end
end
