class HomePage
  include Capybara::DSL
  attr_accessor :search

  def initialize
    @search = page.find_by_id('search_query_top')
  end

  def fill_search_option(value)
    page.fill_in 'search_query_top', with: value
  end

  def click_search_button
    page.click_button('Search')
  end
end

def home_page
  @home_page ||= HomePage.new
end