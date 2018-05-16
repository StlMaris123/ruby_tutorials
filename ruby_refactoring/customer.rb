class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rental = []
  end

  def add_rental(args)
    @rental << args
  end

  def statement
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{@name}\n"
    @rentals.each do |element|

      frequent_renter_points += element.frequent_renter_points


      result += "\t" + each.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount += element.charge

    end
    result += "amount owed is #{total_amount}\n"
    result += "you earned #{frequent_renter_points} frequent renter points"
    result
  end

  def amount_for(rental)
    rental.charge
  end

end
