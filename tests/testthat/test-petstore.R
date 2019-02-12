context("basic functionality")
petApi <- PetApi$new()
petId <- 123321
test_that("AddPet", {
  pet <- Pet$new(petId, 
                 Category$new(450,"test_cat"),
                 "name_test",
                 list("photo_url_test"),
                 list(Tag$new(120, "tag_test")),
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
  #expect_equal(response$photoUrls, list("photo_url_test"))
  expect_equal(response$status, "available")
  #expect_equal(response$category, list(Tag$new(120, "tag_test")))
})

#test_that("updatePetWithForm", {
#  response <- petApi$updatePetWithForm(petId, "test", "sold")
#  expect_equal(response, "Pet updated")
#})
