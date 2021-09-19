module FactoryBotFactory
  class Config
    DEFAULT_CONVERTERS = {
      hash_converter:        Converters::HashConverter,
      string_converter:      Converters::StringConverter,
      numertic_converter:    Converters::NumericConverter,
      open_struct_converter: Converters::HashConverter,
      nil_converter:         Converters::NilConverter
    }

    attr_accessor :hash_converter, :string_converter, :numertic_converter, :open_struct_converter, :nil_converter

    def initialize(options = {})
      options = DEFAULT_CONVERTERS.merge(options)
      options.each { |k, v| instance_variable_set(:"@#{k}", v) }
    end
  end
end
