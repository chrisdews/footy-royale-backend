# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

User.delete_all
League.delete_all
Match.delete_all
Prediction.delete_all
Team.delete_all
UserLeague.delete_all

user = User.create(username: 'dewsy', win_count: 2, password:'1234')
league = League.create(round_number: 0, name: 'There Can Only Be One', prev_winner: 'null')
userleague = UserLeague.create(user_id: 1, league_id:1, user_active: true)
team = Team.create(name: 'Arsenal', img:1)
match = Match.create(league_id: 1, team_id:1)
prediction = Prediction.create(match_id: 1, team_id: 1, user_id:1)