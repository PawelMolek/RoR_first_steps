class User
  attr_accessor :name, :surname, :email, :phone_number

  def initialize(name, surname, email, phone_number)
    @name = name
    @surname = surname
    @email = email
    @phone_number = phone_number
  end
end

user1 = User.new("Pawel", "Pawlowski", "pawel@pawel.pl", 123456789)
user2 = User.new("Stefan", "Stefanowski", "stefan@stefan.pl", 987654321)
user3 = User.new("Gerwazy", "Gerwazowski", "gerwazy@gerwazy.pl", 111222333)

class Admin < User
  def welcome
    puts "Welcome #{name} #{surname}"
  end
end

user4 = Admin.new("Roman", "Romanowski", "roman@roman.pl", 444555666)
user5 = Admin.new("Andrzej", "Andrzejowski", "andrzej@andrzej.pl", 777888999)

array = [user1, user2, user3, user4, user5]

array.each do |user|
  if (user.phone_number.digits.sum).even?
    puts user.phone_number
  end
end