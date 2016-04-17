require 'spec_helper'

describe Computer do
  let(:data_source) { DataSource.new }
  let(:computer) { Computer.new(1, data_source) }

  context '#mouse' do
    it 'return mouse info and price' do
      info = data_source.get_mouse_info(1)
      price = data_source.get_mouse_price(1)

      expect(computer.mouse).to eq "Mouse: ​#{info}​ ($​#{price}​)"
    end
  end

  context '#cpu' do
    it 'return cpu info and price' do
      info = data_source.get_cpu_info(1)
      price = data_source.get_cpu_price(1)

      expect(computer.cpu).to eq "CPU: ​#{info}​ ($​#{price}​)"
    end
  end

  context '#keyboard' do
    it 'return keyboard info and price' do
      info = data_source.get_keyboard_info(1)
      price = data_source.get_keyboard_price(1)

      expect(computer.keyboard).to eq "Keyboard: ​#{info}​ ($​#{price}​)"
    end
  end

  context '#memory' do
    it 'return memory info and price' do
      info = data_source.get_memory_info(1)
      price = data_source.get_memory_price(1)

      expect(computer.memory).to eq "Memory: ​#{info}​ ($​#{price}​)"
    end
  end

  context '#motherboard' do
    it 'return motherboard info and price' do
      info = data_source.get_motherboard_info(1)
      price = data_source.get_motherboard_price(1)

      expect(computer.motherboard).to eq "Motherboard: ​#{info}​ ($​#{price}​)"
    end
  end

  context '#storage' do
    it 'return storage info and price' do
      info = data_source.get_storage_info(1)
      price = data_source.get_storage_price(1)

      expect(computer.storage).to eq "Storage: ​#{info}​ ($​#{price}​)"
    end
  end
end
