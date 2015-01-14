require('rspec')
require('term')

describe(Term) do

  before() do
    Term.clear()
  end

  describe('#clear') do
    it('clears the Terms array') do
      expect(Term.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a term and description') do
      new_term = Term.new("apple", "a red delicious edible")
      expect(new_term.save()).to(eq([[new_term]]))
    end
  end
end
