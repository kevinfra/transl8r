class Transl8r
  
  def initialize(default_locale, translation_files_path)
    @default_locale = default_locale
    @translations = {}
    Dir[translation_files_path].each do |file_path|
      translation_locale = file_path.split('/').last.chomp('.rb')
      @translations[translation_locale] = YAML.load_file(file_path)
    end
  end

  def translate(text, locale=nil)
    text_path = text.split('.')
    locale ||= @default_locale
    translation = @translations[locale]
    text_path.each { |text_for_translate| translation = translation[text_for_translate.to_sym] }
    translation
  end
end