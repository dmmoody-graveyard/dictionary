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

  describe('#show_all') do
    it('shows all the terms') do
      new_term1 = Term.new("apple", "a red delicious edible")
      new_term1.save()
      new_term2 = Term.new("orange", "an orange delicious edibe")
      new_term2.save()
      expect(Term.show_all()).to(eq([[new_term1], [new_term2]]))
    end
  end
end
