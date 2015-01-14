class Term

  @@term = []
  @@show_words = []

  define_method(:initialize) do |term, description|
    @term = term
    @description = description
  end

  define_method(:save) do
    @@term.push([self])
  end

  define_singleton_method(:clear) do
    @@term = []
  end

  define_singleton_method(:show_all) do
    @@term
  end

end
