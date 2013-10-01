require 'machinist/active_record'

Newconference::Speaker.blueprint do
  name { "Some nice guy #{sn}" }
end

Newconference::Keynote.blueprint do
  speaker { Newconference::Speaker.make! }
  title { "Some nice title #{sn}" }
end

Newconference::Schedule.blueprint do
  title { "Something" }
  room { Newconference::Room.make! }
  starts_at { Time.now }
  ends_at { Time.now + 1.hour }
end

Newconference::Room.blueprint do
  name { "Some name #{sn}" }
end

Newconference::Sponsor.blueprint do
  name { "Some name #{sn}" }
  kind { 'organization' }
  logo { File.open("#{Newconference::Core::Engine.root}/spec/fixtures/logo.png") }
end
