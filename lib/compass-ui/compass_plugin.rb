options = Hash.new
base_directory = File.join(File.dirname(__FILE__), '..', '..')
options[:stylesheets_directory] = File.join(base_directory, 'stylesheets')
options[:templates_directory] = File.join(base_directory, 'templates')
Compass::Frameworks.register('compass-ui', options)
