desc 'create fake customers'
task :create_fake_customers => [:environment] do
  require 'faker'
  require 'json'

  list = (0..100).map do |i|
    full_name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
    Contact.create(
      email: Faker::Internet.free_email(full_name),
      name: full_name,
      phone: Faker::PhoneNumber.cell_phone,
      address: "#{Faker::Address.street_address} #{Faker::Address.street_suffix}",
      suite: Faker::Address.secondary_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip_code
    )
  end

end