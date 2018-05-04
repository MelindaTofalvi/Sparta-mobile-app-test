class BudgetPage

  attr_accessor :name_input

  def initialize(driver)
    @driver = driver
    @budget_page_id = 'protect.budgetwatch:id/action_bar_root'
    @add_new_budget_icon = 'protect.budgetwatch:id/action_add'
    @input_name_id = 'protect.budgetwatch:id/budgetNameEdit'
    @input_value_id = 'protect.budgetwatch:id/valueEdit'
    @save_budget = 'protect.budgetwatch:id/action_save'
    @budget_name_id = 'protect.budgetwatch:id/budgetName'
  end

  def check_budget_page_displayed?
    @driver.find_element(:id, @budget_page_id).enabled?
  end

  def click_add_budget
    @driver.find_element(:id, @add_new_budget_icon).click
  end

  def fill_in_name(name)
    @name_input = name
    @driver.find_element(:id, @input_name_id).send_keys(@name_input)
  end

  def fill_in_value(value)
    @driver.find_element(:id, @input_value_id).send_keys(value)
  end

  def click_save
    @driver.find_element(:id, @save_budget).click
  end

  def check_budget_name(budget_index)
		budget = @driver.find_elements(:id, @budget_name_id)[budget_index]
		budget.text
	end
end
