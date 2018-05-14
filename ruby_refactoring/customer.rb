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
      this_amount = amount_for(element)

      frequent_reneter_points += 1

      if element.movie.price_code == Movie.NEW_RELEASE && 
        element.days_rented > 1
        frequent_renter_points += 1
      end

      result += "\t" + each.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount += this_amount

    end
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end

  def amount_for(rental)
    result = 0
    case rental.movie.price_code
    when Movie::REGULAR
      result += 2
      result += (rental.days_rented - 2) * 1.5 if rental.days_rented > 2
    when Movie::NEW_RELEASE
      result += rental.days_rented * 3
    when Movie::CHILDRENS
      result += 1.5
     result += (rental.days_rented - 3) * 1.5 if rental.days_rented > 3
    end
  end
end