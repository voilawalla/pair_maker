require 'json'

module FileAccess
  extend self
  
  def read file
    JSON.parse File.read(file)
  end

  def write file, data
    File.open(file, "wb") do |file|
      file.puts data
    end
  end

end
