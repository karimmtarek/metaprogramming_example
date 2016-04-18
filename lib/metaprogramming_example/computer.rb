class Computer
  attr_reader :id, :data_source

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) do
      info = data_source.send("get_#{name}_info", id)
      price = data_source.send("get_#{name}_price", id)
      "#{name.capitalize}: ​#{info}​ ($​#{price}​)"
    end
  end
end
