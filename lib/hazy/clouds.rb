module Hazy
  class Clouds
    def self.config
      @@config ||= {}
    end

    def self.load_from_file(path)
      @@config = YAML.load_file(path)['clouds']
    end

    def self.clear
      @@config = {}
    end

    private

    def self.default_path
      File.join(__dir__, 'clouds.yaml')
    end
  end
end
