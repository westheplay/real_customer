require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "pry"
require "selenium-webdriver"
require "rspec"
require "site_prism"
require "faker"
require "securerandom"
require "cpf_faker"
require "ffi"
require "business"

require_relative "../support/helpers/page_helper.rb"
require_relative "../support/helpers/file_helper.rb"

# Configuração para FAKER Brasileiro
Faker::Config.locale = "pt-BR"

# criar constante com nome browsers

BROWSERS = ENV["BROWSERS"]

Capybara.register_driver :selenium do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 120
  case BROWSERS

  when "firefox_headless"
    option = ::Selenium::WebDriver::Firefox::Options.new(args: %w[--headless --disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option, desired_capabilities: { accept_insecure_certs: true })
  when "chrome_headless"
    option = ::Selenium::WebDriver::Chrome::Options.new(args: %w[--headless enable-features=NetworkService,NetworkServiceInProcess --window-size=1920x1080 --disable-gpu --log-level=3])
    Capybara::Selenium::Driver.new(app, browser: :chrome, http_client: client, options: option, desired_capabilities: { accept_insecure_certs: true })
  when "firefox"
    option = ::Selenium::WebDriver::Firefox::Options.new(args: %w[--disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option, desired_capabilities: { accept_insecure_certs: true })
  else
    option = ::Selenium::WebDriver::Chrome::Options.new(args: %w[--disable-gpu --disable-infobars --log-level=3])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option, desired_capabilities: { accept_insecure_certs: true })
  end
end

#Nova configuração com mais de um ambiente
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/ambiente/#{ENVIRONMENT_TYPE}.yml")
#World(Helper)

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = CONFIG['url']
end

Capybara.default_max_wait_time = 50
Capybara.page.driver.browser.manage.window.maximize

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == "Before hook"
    return text if text == "After hook"
    "#{source.last.keyword}#{text}"
  end
end

AllureCucumber.configure do |config|
  config.results_directory = "report/allure-results"
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
  #config.logger = Logger.new($stdout, Logger::DEBUG)
  config.environment = "staging"

  # these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
  #config.link_tms_pattern = "http://testlink.poupex.com.br:8002/login.php?viewer="
  #config.link_issue_pattern = "http://www.jira.com/browse/{}"
end