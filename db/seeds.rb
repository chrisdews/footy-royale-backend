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
TestFixture.delete_all

user = User.create(username: 'dewsy', win_count: 2, password:'1234')
league = League.create(round_number: 0, name: 'There Can Only Be One', prev_winner: 'nil')
userleague = UserLeague.create(user_id: 1, league_id:1, user_active: true)
team = Team.create(name: 'Arsenal', img:1)
match = Match.create(league_id: 1, team_id:1)
prediction = Prediction.create(match_id: 1, team_id: 1, user_id:1, royale_round:1)

# tf1 = TestFixture.create(code: 12345, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 1, team_a_score: 0, team_h: 2, team_h_score: 0)
# tf2 = TestFixture.create(code: 12346, event: 1, finished: true, kickoff_time: '1pm', started: true, team_a: 3, team_a_score: 1, team_h: 4, team_h_score: 0)
# tf3 = TestFixture.create(code: 12347, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 5, team_a_score: 0, team_h: 6, team_h_score: 0)
# tf4 = TestFixture.create(code: 12375, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 7, team_a_score: 0, team_h: 8, team_h_score: 0)
# tf5 = TestFixture.create(code: 12325, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 9, team_a_score: 0, team_h: 10, team_h_score: 0)
# tf6 = TestFixture.create(code: 12315, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 11, team_a_score: 0, team_h: 12, team_h_score: 0)
# tf7 = TestFixture.create(code: 123115, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 13, team_a_score: 0, team_h: 14, team_h_score: 0)
# tf8 = TestFixture.create(code: 1235, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 15, team_a_score: 0, team_h: 16, team_h_score: 0)
# tf9 = TestFixture.create(code: 123115, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 17, team_a_score: 0, team_h: 18, team_h_score: 0)
# tf10 = TestFixture.create(code: 12341115, event: 1, finished: true, kickoff_time: '3pm', started: false, team_a: 19, team_a_score: 0, team_h: 20, team_h_score: 0)
# tf11 = TestFixture.create(code: 1231145, event: 2, finished: true, kickoff_time: '3pm', started: false, team_a: 1, team_a_score: 0, team_h: 3, team_h_score: 0)
# tf12 = TestFixture.create(code: 1231145, event: 2, finished: true, kickoff_time: '3pm', started: false, team_a: 2, team_a_score: 0, team_h: 5, team_h_score: 0)

fixtures = [
    {
      "code": 1059702,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 1,
      "kickoff_time": "2019-08-09T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059709,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 8,
      "kickoff_time": "2019-08-10T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059703,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 2,
      "kickoff_time": "2019-08-10T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059704,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 3,
      "kickoff_time": "2019-08-10T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059705,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 4,
      "kickoff_time": "2019-08-10T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059708,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 7,
      "kickoff_time": "2019-08-10T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059707,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 6,
      "kickoff_time": "2019-08-10T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059706,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 5,
      "kickoff_time": "2019-08-11T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059711,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 10,
      "kickoff_time": "2019-08-11T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059710,
      "event": 1,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 9,
      "kickoff_time": "2019-08-11T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059712,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 11,
      "kickoff_time": "2019-08-17T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059713,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 12,
      "kickoff_time": "2019-08-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059714,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 13,
      "kickoff_time": "2019-08-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059716,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 15,
      "kickoff_time": "2019-08-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059718,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 17,
      "kickoff_time": "2019-08-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059720,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 19,
      "kickoff_time": "2019-08-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059717,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 16,
      "kickoff_time": "2019-08-17T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059719,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 18,
      "kickoff_time": "2019-08-18T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059715,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 14,
      "kickoff_time": "2019-08-18T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059721,
      "event": 2,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 20,
      "kickoff_time": "2019-08-19T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059723,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 21,
      "kickoff_time": "2019-08-23T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059727,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 26,
      "kickoff_time": "2019-08-24T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059724,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 23,
      "kickoff_time": "2019-08-24T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059726,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 25,
      "kickoff_time": "2019-08-24T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059728,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 27,
      "kickoff_time": "2019-08-24T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059730,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 29,
      "kickoff_time": "2019-08-24T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059731,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 30,
      "kickoff_time": "2019-08-24T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059725,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 24,
      "kickoff_time": "2019-08-24T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059722,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 22,
      "kickoff_time": "2019-08-25T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059729,
      "event": 3,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 28,
      "kickoff_time": "2019-08-25T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059740,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 39,
      "kickoff_time": "2019-08-31T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059734,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 33,
      "kickoff_time": "2019-08-31T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059735,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 34,
      "kickoff_time": "2019-08-31T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059737,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 36,
      "kickoff_time": "2019-08-31T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059738,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 37,
      "kickoff_time": "2019-08-31T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059739,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 38,
      "kickoff_time": "2019-08-31T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059741,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 40,
      "kickoff_time": "2019-08-31T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059733,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 32,
      "kickoff_time": "2019-08-31T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059736,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 35,
      "kickoff_time": "2019-09-01T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059732,
      "event": 4,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 31,
      "kickoff_time": "2019-09-01T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059745,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 44,
      "kickoff_time": "2019-09-14T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059744,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 43,
      "kickoff_time": "2019-09-14T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059746,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 45,
      "kickoff_time": "2019-09-14T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059748,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 47,
      "kickoff_time": "2019-09-14T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059749,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 48,
      "kickoff_time": "2019-09-14T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059751,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 50,
      "kickoff_time": "2019-09-14T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059747,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 46,
      "kickoff_time": "2019-09-14T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059742,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 42,
      "kickoff_time": "2019-09-15T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059750,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 49,
      "kickoff_time": "2019-09-15T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059743,
      "event": 5,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 41,
      "kickoff_time": "2019-09-16T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059760,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 59,
      "kickoff_time": "2019-09-20T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059757,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 56,
      "kickoff_time": "2019-09-21T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059753,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 52,
      "kickoff_time": "2019-09-21T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059755,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 54,
      "kickoff_time": "2019-09-21T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059756,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 55,
      "kickoff_time": "2019-09-21T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059758,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 57,
      "kickoff_time": "2019-09-21T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059759,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 58,
      "kickoff_time": "2019-09-21T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059761,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 60,
      "kickoff_time": "2019-09-22T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059752,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 51,
      "kickoff_time": "2019-09-22T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059754,
      "event": 6,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 53,
      "kickoff_time": "2019-09-22T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059769,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 68,
      "kickoff_time": "2019-09-28T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059763,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 61,
      "kickoff_time": "2019-09-28T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059762,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 62,
      "kickoff_time": "2019-09-28T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059764,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 63,
      "kickoff_time": "2019-09-28T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059765,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 64,
      "kickoff_time": "2019-09-28T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059770,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 69,
      "kickoff_time": "2019-09-28T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059771,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 70,
      "kickoff_time": "2019-09-28T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059767,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 66,
      "kickoff_time": "2019-09-28T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059766,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 65,
      "kickoff_time": "2019-09-29T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059768,
      "event": 7,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 67,
      "kickoff_time": "2019-09-30T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059773,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 72,
      "kickoff_time": "2019-10-05T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059774,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 73,
      "kickoff_time": "2019-10-05T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059775,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 74,
      "kickoff_time": "2019-10-05T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059776,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 75,
      "kickoff_time": "2019-10-05T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059778,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 77,
      "kickoff_time": "2019-10-05T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059780,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 79,
      "kickoff_time": "2019-10-05T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059781,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 80,
      "kickoff_time": "2019-10-05T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059779,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 78,
      "kickoff_time": "2019-10-06T13:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059772,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 71,
      "kickoff_time": "2019-10-06T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059777,
      "event": 8,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 76,
      "kickoff_time": "2019-10-06T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059786,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 85,
      "kickoff_time": "2019-10-19T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059783,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 81,
      "kickoff_time": "2019-10-19T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059782,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 82,
      "kickoff_time": "2019-10-19T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059784,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 83,
      "kickoff_time": "2019-10-19T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059787,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 86,
      "kickoff_time": "2019-10-19T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059790,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 89,
      "kickoff_time": "2019-10-19T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059791,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 90,
      "kickoff_time": "2019-10-19T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059788,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 87,
      "kickoff_time": "2019-10-19T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059785,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 84,
      "kickoff_time": "2019-10-20T15:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059789,
      "event": 9,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 88,
      "kickoff_time": "2019-10-21T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059799,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 98,
      "kickoff_time": "2019-10-25T19:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059796,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 95,
      "kickoff_time": "2019-10-26T11:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059793,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 92,
      "kickoff_time": "2019-10-26T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059800,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 99,
      "kickoff_time": "2019-10-26T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059801,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 100,
      "kickoff_time": "2019-10-26T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059794,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 93,
      "kickoff_time": "2019-10-26T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059797,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 96,
      "kickoff_time": "2019-10-27T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059792,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 91,
      "kickoff_time": "2019-10-27T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059795,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 94,
      "kickoff_time": "2019-10-27T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059798,
      "event": 10,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 97,
      "kickoff_time": "2019-10-27T16:30:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059803,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 101,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059804,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 102,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059802,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 103,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059805,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 104,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059806,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 105,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059807,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 106,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059808,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 107,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059809,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 108,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059810,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 109,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059811,
      "event": 11,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 110,
      "kickoff_time": "2019-11-02T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059812,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 111,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059813,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 112,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059815,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 114,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059817,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 116,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059818,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 117,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059819,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 118,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059820,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 119,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059821,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 120,
      "kickoff_time": "2019-11-09T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059814,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 113,
      "kickoff_time": "2019-11-10T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059816,
      "event": 12,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 115,
      "kickoff_time": "2019-11-10T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059823,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 121,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059824,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 122,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059822,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 123,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059825,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 124,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059826,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 125,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059827,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 126,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059828,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 127,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059829,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 128,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059830,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 129,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059831,
      "event": 13,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 130,
      "kickoff_time": "2019-11-23T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059832,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 131,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059833,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 132,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059834,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 133,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059835,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 134,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059837,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 136,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059839,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 138,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059840,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 139,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059841,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 140,
      "kickoff_time": "2019-11-30T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059836,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 135,
      "kickoff_time": "2019-12-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059838,
      "event": 14,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 137,
      "kickoff_time": "2019-12-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059842,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 141,
      "kickoff_time": "2019-12-03T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059843,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 142,
      "kickoff_time": "2019-12-03T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059844,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 143,
      "kickoff_time": "2019-12-03T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059846,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 145,
      "kickoff_time": "2019-12-03T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059847,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 146,
      "kickoff_time": "2019-12-03T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059845,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 144,
      "kickoff_time": "2019-12-03T20:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059848,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 147,
      "kickoff_time": "2019-12-04T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059851,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 150,
      "kickoff_time": "2019-12-04T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059849,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 148,
      "kickoff_time": "2019-12-04T20:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059850,
      "event": 15,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 149,
      "kickoff_time": "2019-12-04T20:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059853,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 151,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059852,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 152,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059854,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 153,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059855,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 154,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059856,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 155,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059857,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 156,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059858,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 157,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059859,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 158,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059860,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 159,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059861,
      "event": 16,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 160,
      "kickoff_time": "2019-12-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059862,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 161,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059863,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 162,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059864,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 163,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059865,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 164,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059866,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 165,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059867,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 166,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059868,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 167,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059869,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 168,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059870,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 169,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059871,
      "event": 17,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 170,
      "kickoff_time": "2019-12-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059873,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 171,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059872,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 172,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059874,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 173,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059875,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 174,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059876,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 175,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059877,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 176,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059878,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 177,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059879,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 178,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059880,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 179,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059881,
      "event": 18,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 180,
      "kickoff_time": "2019-12-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059883,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 181,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059882,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 182,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059884,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 183,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059885,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 184,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059886,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 185,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059887,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 186,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059888,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 187,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059889,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 188,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059890,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 189,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059891,
      "event": 19,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 190,
      "kickoff_time": "2019-12-26T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059892,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 191,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059893,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 192,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059894,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 193,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059895,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 194,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059896,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 195,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059897,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 196,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059898,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 197,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059899,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 198,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059900,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 199,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059901,
      "event": 20,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 200,
      "kickoff_time": "2019-12-28T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059902,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 201,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059903,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 202,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059904,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 203,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059905,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 204,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059906,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 205,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059907,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 206,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059908,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 207,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059909,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 208,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059910,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 209,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059911,
      "event": 21,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 210,
      "kickoff_time": "2020-01-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059913,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 211,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059912,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 212,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059914,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 213,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059915,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 214,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059916,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 215,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059917,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 216,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059918,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 217,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059919,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 218,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059920,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 219,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059921,
      "event": 22,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 220,
      "kickoff_time": "2020-01-11T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059922,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 221,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059923,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 222,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059924,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 223,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059925,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 224,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059926,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 225,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1059927,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 226,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059928,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 227,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059929,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 228,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059930,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 229,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059931,
      "event": 23,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 230,
      "kickoff_time": "2020-01-18T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059933,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 231,
      "kickoff_time": "2020-01-21T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059932,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 232,
      "kickoff_time": "2020-01-21T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059934,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 233,
      "kickoff_time": "2020-01-21T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059935,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 234,
      "kickoff_time": "2020-01-21T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059937,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 236,
      "kickoff_time": "2020-01-21T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059938,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 237,
      "kickoff_time": "2020-01-21T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059936,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 235,
      "kickoff_time": "2020-01-21T20:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059939,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 238,
      "kickoff_time": "2020-01-22T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059941,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 240,
      "kickoff_time": "2020-01-22T19:45:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059940,
      "event": 24,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 239,
      "kickoff_time": "2020-01-22T20:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059942,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 241,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059943,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 242,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059944,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 243,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059945,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 244,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059946,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 245,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059947,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 246,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059948,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 247,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059949,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 248,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059950,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 249,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059951,
      "event": 25,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 250,
      "kickoff_time": "2020-02-01T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059952,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 251,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059953,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 252,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059954,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 253,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059955,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 254,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059956,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 255,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059957,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 256,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059958,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 257,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059959,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 258,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059960,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 259,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059961,
      "event": 26,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 260,
      "kickoff_time": "2020-02-08T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059962,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 261,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059963,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 262,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059964,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 263,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059965,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 264,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059966,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 265,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059967,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 266,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059968,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 267,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059969,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 268,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059970,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 269,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059971,
      "event": 27,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 270,
      "kickoff_time": "2020-02-22T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059973,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 271,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059972,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 272,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059974,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 273,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059975,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 274,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059976,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 275,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1059977,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 276,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059978,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 277,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059979,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 278,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1059980,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 279,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1059981,
      "event": 28,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 280,
      "kickoff_time": "2020-02-29T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059982,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 281,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059983,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 282,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059984,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 283,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1059985,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 284,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1059986,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 285,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059987,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 286,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059988,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 287,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059989,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 288,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059990,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 289,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059991,
      "event": 29,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 290,
      "kickoff_time": "2020-03-07T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059993,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 291,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059992,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 292,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1059994,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 293,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1059995,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 294,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1059996,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 295,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1059997,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 296,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1059998,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 297,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1059999,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 298,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1060000,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 299,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1060001,
      "event": 30,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 300,
      "kickoff_time": "2020-03-14T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1060002,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 301,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1060003,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 302,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1060004,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 303,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060005,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 304,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 5
    },
    {
      "code": 1060006,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 305,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060007,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 306,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060008,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 307,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060009,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 308,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060010,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 309,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060011,
      "event": 31,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 310,
      "kickoff_time": "2020-03-21T15:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060013,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 311,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060014,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 312,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1060012,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 313,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060015,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 314,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060016,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 315,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060017,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 316,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1060018,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 317,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1060019,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 318,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060020,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 319,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060021,
      "event": 32,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 320,
      "kickoff_time": "2020-04-04T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060022,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 321,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060023,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 322,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1060024,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 323,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1060025,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 324,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1060026,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 325,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060027,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 326,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060028,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 327,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060029,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 328,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060030,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 329,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060031,
      "event": 33,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 330,
      "kickoff_time": "2020-04-11T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060033,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 331,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1060034,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 332,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060032,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 333,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060035,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 334,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060036,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 335,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060037,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 336,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060038,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 337,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1060039,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 338,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1060040,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 339,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060041,
      "event": 34,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 340,
      "kickoff_time": "2020-04-18T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060043,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 341,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1060042,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 342,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1060044,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 343,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060045,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 344,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1060046,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 345,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060047,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 346,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060048,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 347,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060049,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 348,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1060050,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 349,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060051,
      "event": 35,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 350,
      "kickoff_time": "2020-04-25T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060052,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 351,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 4
    },
    {
      "code": 1060053,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 352,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 2
    },
    {
      "code": 1060054,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 353,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060055,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 354,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060056,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 355,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060057,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 356,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060058,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 357,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1060059,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 358,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060060,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 359,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060061,
      "event": 36,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 360,
      "kickoff_time": "2020-05-02T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1060063,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 361,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 1,
      "team_a_score": nil,
      "team_h": 2,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060062,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 362,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 16,
      "team_a_score": nil,
      "team_h": 3,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    },
    {
      "code": 1060064,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 363,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 13,
      "team_a_score": nil,
      "team_h": 4,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060065,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 364,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 6,
      "team_a_score": nil,
      "team_h": 10,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 5
    },
    {
      "code": 1060066,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 365,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 19,
      "team_a_score": nil,
      "team_h": 12,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060067,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 366,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 5,
      "team_a_score": nil,
      "team_h": 14,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060068,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 367,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 8,
      "team_a_score": nil,
      "team_h": 15,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060069,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 368,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 9,
      "team_a_score": nil,
      "team_h": 17,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1060070,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 369,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 11,
      "team_a_score": nil,
      "team_h": 18,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060071,
      "event": 37,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 370,
      "kickoff_time": "2020-05-09T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 7,
      "team_a_score": nil,
      "team_h": 20,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 3
    },
    {
      "code": 1060072,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 371,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 18,
      "team_a_score": nil,
      "team_h": 1,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1060073,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 372,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 4,
      "team_a_score": nil,
      "team_h": 5,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060074,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 373,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 20,
      "team_a_score": nil,
      "team_h": 6,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 3,
      "team_a_difficulty": 4
    },
    {
      "code": 1060075,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 374,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 17,
      "team_a_score": nil,
      "team_h": 7,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 2
    },
    {
      "code": 1060076,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 375,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 3,
      "team_a_score": nil,
      "team_h": 8,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 4
    },
    {
      "code": 1060077,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 376,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 12,
      "team_a_score": nil,
      "team_h": 9,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060078,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 377,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 14,
      "team_a_score": nil,
      "team_h": 11,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 5
    },
    {
      "code": 1060079,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 378,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 10,
      "team_a_score": nil,
      "team_h": 13,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 4,
      "team_a_difficulty": 3
    },
    {
      "code": 1060080,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 379,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 15,
      "team_a_score": nil,
      "team_h": 16,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 2
    },
    {
      "code": 1060081,
      "event": 38,
      "finished": false,
      "finished_provisional": false,
      "fpl_id": 380,
      "kickoff_time": "2020-05-17T14:00:00Z",
      "minutes": 0,
      "provisional_start_time": false,
      "started": false,
      "team_a": 2,
      "team_a_score": nil,
      "team_h": 19,
      "team_h_score": nil,
      "stats": [
        
      ],
      "team_h_difficulty": 2,
      "team_a_difficulty": 3
    }
  ]

  fixtures.each do |fix|
    TestFixture.create fix
end 