class HomePage
  include Capybara::DSL
  attr_accessor :search

  def initialize
    @search = page.find_by_id('search_query_top')
  end

  def fill_search_option(value)
    page.fill_in 'search_query_top', with: value
  end

  def click_on(value)
    page.click_on value
  end

  def number_of_product
    product_in_list = page.all(:xpath, "//ul[@class='product_list row list']//div[@class='row']")
    print product_in_list.lenght
  end
end

def home_page
  @home_page ||= HomePage.new
end