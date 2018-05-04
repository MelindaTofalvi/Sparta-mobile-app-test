Given("I can open the app") do
  mainpage.check_homepage_displayed?
end

When("click on budget") do
  mainpage.click_on_budget
end

Then("the budget page opens") do
  expect(budgetpage.check_budget_page_displayed?).to be true
end

When("I enter a budget") do
  mainpage.click_on_budget
  budgetpage.click_add_budget
  budgetpage.fill_in_name("For clothes")
  budgetpage.fill_in_value(100)
end

When("save the budget") do
  budgetpage.click_save
end

Then("the budget is saved") do
   expect(budgetpage.check_budget_name(0)).to eq budgetpage.name_input
end

Then("can be seen on the homepage") do
  expect(budgetpage.check_budget_name(0)).to eq budgetpage.name_input
end
