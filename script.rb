class User
  attr_accessor :name,  :surname, :email, :phone_number

  def initialize (name,surname,email,phone_number)
    @name = name
    @surname = surname
    @email = email
    @phone_number = phone_number
  end

end

pawel = User.new("Pawel", "Pawlowski", "pawel@pawel.pl", "123456789")
stefan = User.new("Stefan", "Stefanowski", "stefan@stefan.pl", "987654321")
gerwazy = User.new("Gerwazy", "Gerwazowski", "gerwazy@gerwazy.pl", "111222333")

class Admin < User
  def welcome
    puts "Welcome #{name} #{surname}"
  end
end

roman = Admin.new("Roman", "Romanowski", "roman@roman.pl", "444555666" )
andrzej = Admin.new("Andrzej", "Andrzejowski", "andrzej@andrzej.pl", "777888999" )

array = []
array<<pawel<<stefan<<gerwazy<<roman<<andrzej

array.each do |user|
  if (user.phone_number.to_i.digits.sum).even?
    puts user.phone_number
  end
end