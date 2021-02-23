# using the Dragon class from the chapter
require_relative 'baby_dragon'

puts '¿Cómo quireres bautizar a tú dragón?'
name = gets.chomp
pet = BabyDragon.new name
while true
  puts
  puts 'commands:  alimentar, jugar, caminar, balancear, dormir, salir'
  command = gets.chomp
  if command == 'salir'
    exit
  elsif command == 'alimentar'
    pet.feed
  elsif command == 'jugar'
    pet.toss
  elsif command == 'caminar'
    pet.walk
  elsif command == 'balancear'
    pet.swing
  elsif command == 'dormir'
    pet.put_to_bed
  else
    puts 'Qué??'
  end
end