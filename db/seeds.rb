Customer.create!([
  {name: "Joel", email: "joel@example.com", phone_number: "3478787654", start_time: "2021-05-10 00:04:38", end_time: "2021-05-10 02:04:38", is_present: true, store_id: 1},
  {name: "Chester", email: "chester@example.com", phone_number: "9177878909", start_time: "2021-05-10 00:11:01", end_time: "2021-05-10 02:11:01", is_present: true, store_id: 1},
  {name: "Jack", email: "jack@example.com", phone_number: "5167678987", start_time: "2021-05-10 00:12:41", end_time: "2021-05-10 02:12:41", is_present: true, store_id: 2}
])
Store.create!([
  {name: "Kids n' Action", password: "password", address: "1149 McDonald Ave, Brooklyn, NY 11230", email: "kna@example.com"},
  {name: "Funtopia USA", password: "password", address: "Metro Mall, 6626 Metropolitan Ave, Queens, NY 11379", email: "funtopia@example.com"},
  {name: "Fairytale Island", password: "password", address: "7110 3rd Ave, Brooklyn, NY 11209", email: "fairytale@example.com"}
])
