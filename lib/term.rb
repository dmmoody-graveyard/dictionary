class Term

  @@terms = []

  define_method(:initialize) do |term, description|
    @term = term
    @description = description
  end

  define_method(:save) do
    @@terms.push([self])
  end

  define_singleton_method(:search) do |term|
    index = nil
    @@terms.each() do |object|
      index = object[0].index(object)
      # found = @@terms.at(index)
    end
    index
  end

  define_singleton_method(:clear) do
    @@terms = []
  end

  define_singleton_method(:show_all) do
    @@terms
  end

  define_method(:show_term) do
    @term
  end

  define_method(:show_definition) do
    @description
  end

  define_singleton_method(:show_words) do
    all_terms = []
    @@terms.each() do |object|
      term_name = object[0].show_term()
      all_terms.push(term_name)
    end
    all_terms
  end

end
