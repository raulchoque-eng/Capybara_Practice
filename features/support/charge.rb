
def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)
  return config
end

def find_config_file(filename)
  root = Pathname.pwd
  while not root.root?
    root.find do |path|
      if path.file? and path.basename.to_s == filename
        return path.to_s
      end
    end
    root = root.parent
  end
  raise 'Configuration file ' #{filename}' not found!'
end
