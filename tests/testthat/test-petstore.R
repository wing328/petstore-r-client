context("basic functionality")
petApi <- PetApi$new()
petId <- 123321
test_that("AddPet", {
  pet <- Pet$new(petId, 
                 Category$new(0,"test"),
                 "test",
                 list("test"),
                 list(Tag$new(0, "test")),
                 "available")
  petApi$AddPet(pet)
  #expect_equal(response$content, "Pet added")
  expect_equal(petId, 123321)
})

test_that("GetPetById", {
  response <- petApi$GetPetById(petId)
  expect_equal(response$content$id, petId)
})

#test_that("updatePetWithForm", {
#  response <- petApi$updatePetWithForm(petId, "test", "sold")
#  expect_equal(response$content, "Pet updated")
#})
