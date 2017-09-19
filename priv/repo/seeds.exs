# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ApiGraphql.Repo.insert!(%ApiGraphql.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#
alias ApiGraphql.Repo
alias ApiGraphql.Customer.Portfolio

for _ <- 1..10 do
  Repo.insert!(%Portfolio{
    name: Faker.Lorem.sentence,
  })
end
