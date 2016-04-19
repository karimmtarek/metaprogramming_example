class Computer
  attr_reader :id, :data_source

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super unless respond_to? name
    info = data_source.send("get_#{name}_info", id)
    price = data_source.send("get_#{name}_price", id)
    "#{name.capitalize}: ​#{info}​ ($​#{price}​)"
  end

  def respond_to_missing?(method, include_private = false)
    data_source.respond_to?("get_#{method}_info") || super
  end
end
