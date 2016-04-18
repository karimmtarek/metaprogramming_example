class Computer
  attr_reader :id, :data_source

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = data_source.send("get_#{name}_info", id)
      price = data_source.send("get_#{name}_price", id)
      "#{name.capitalize}: ​#{info}​ ($​#{price}​)"
    end
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard
  define_component :memory
  define_component :motherboard
  define_component :storage
end
