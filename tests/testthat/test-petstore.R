context("basic functionality")
petApi <- PetApi$new()
petId <- 123321
test_that("AddPet", {
  pet <- Pet$new(petId, 
                 Category$new(450,"test_cat"),
                 "name_test",
                 list("photo_test", "second test"),
                 list(Tag$new(123, "tag_test"), Tag$new(456, "unknown")),
                 "available")
  result <-petApi$AddPet(pet)
  expect_equal(petId, 123321)
  expect_equal(result, NULL)
})

test_that("GetPetById", {
  response <- petApi$GetPetById(petId)
  expect_equal(response$id, petId)
  expect_equal(response$name, "name_test")
  #expect_equal(response$category, Category$new(450,"test_cat"))
  expect_equal(response$photoUrls, list("photo_test", "second test"))
  expect_equal(response$status, "available")
  expect_equal(response$tags, list(Tag$new(123, "tag_test"), Tag$new(456, "unknown")))
})

#test_that("updatePetWithForm", {
#  response <- petApi$updatePetWithForm(petId, "test", "sold")
#  expect_equal(response, "Pet updated")
#})
