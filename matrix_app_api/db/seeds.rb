# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.create([
    { name: "Neo", description: "Neo (born as Thomas A. Anderson, also known as The One, an anagram for Neo) is a fictional character and the protagonist of the Matrix franchise." },
	{ name: "Trinity", description: "Like the series' other main characters, Trinity is a computer programmer and a hacker who has escaped from the Matrix, a sophisticated computer program where most humans are imprisoned." },
	{ name: "Morpheus", description: "In the Matrix films, Morpheus is the captain of the Nebuchadnezzar." },
	{ name: "Agent Smith", description: "Smith began as an Agent, an AI program in the Matrix programmed to keep order within the system by terminating human simulacra which would bring instability to the simulated reality, as well as any rogue programs that no longer serve a purpose to the Machine collective." },
])