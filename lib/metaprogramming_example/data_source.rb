require 'json'

# DataSource#initialize connects to the data source when you create a new DataSource object
# The other methods take a person identifier (id) and return info about that person
class DataSource
  attr_reader :raw_data
  PATH = "#{Dir.pwd}/data/data.json"

  def initialize
    @raw_data = JSON.parse(File.read(PATH))
  end

  def find(id)
    raw_data['workstations'].select { |workstation| workstation['id'] == id  }[0]
  end

  def get_cpu_info(id)
    find(id)['cpu']['info']
  end

  def get_cpu_price(id)
    find(id)['cpu']['price']
  end

  def get_mouse_info(id)
    find(id)['mouse']['info']
  end

  def get_mouse_price(id)
    find(id)['mouse']['price']
  end

  def get_keyboard_info(id)
    find(id)['keyboard']['info']
  end

  def get_keyboard_price(id)
    find(id)['keyboard']['price']
  end

  def get_memory_info(id)
    find(id)['memory']['info']
  end

  def get_memory_price(id)
    find(id)['memory']['price']
  end

  def get_motherboard_info(id)
    find(id)['motherboard']['info']
  end

  def get_motherboard_price(id)
    find(id)['motherboard']['price']
  end

  def get_storage_info(id)
    find(id)['storage']['info']
  end

  def get_storage_price(id)
    find(id)['storage']['price']
  end
end
