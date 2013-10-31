require 'compass'

class Compass::Compiler
  alias old_initialize initialize

  def initialize(working_path, from, to, options)
    old_initialize(working_path, from, to, options)
    self.sass_options[:importer] ||= Sass::ImportOnce::Importer.new(from)
  end
end

module Compass::Configuration::Adapters
  alias old_sass_load_paths sass_load_paths

  def sass_load_paths
    load_paths = old_sass_load_paths

    load_paths.map! do |p|
      next p if p.respond_to?(:find_relative) && !p.is_a?(Sass::Importers::Filesystem)
      Sass::Importers::Filesystem.new(p.to_s)
    end

    load_paths
  end
end