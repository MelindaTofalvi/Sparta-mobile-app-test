class MainPage
  def initialize(driver)
    @driver = driver
  end

  def check_homepage_displayed?
    @driver.find_element(:id, 'protect.budgetwatch:id/menu')
  end

  def click_on_budget
    @driver.find_element(:id, 'protect.budgetwatch:id/menu').click
  end
end
