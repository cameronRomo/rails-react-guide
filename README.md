#### Here are the sequential steps needed to develop a rails/react monolith using postgresql, esbuild, and bootstrap.

#### Setting up the Database

- Create a new Rails app with the new generator: `rails new rails_react_recipe -d postgresql -j esbuild -c bootstrap -T`
- Connect application to a database: `rails db:create`
- Start app: `bin/dev`, and navigate to localhost:3000

#### Setting up the frontend

- Add React, ReactDOM, and React Router: `yarn add react react-dom react-router-dom`
- Add a homepage controller: `rails g controller Homepage index`
- Append ` --loader:.js=jsx` to the build script in `package.json`
- In `app/javascript` add a `components` directory and next to it add the `App.jsx` file.
- Import `./index` into `application.js`
- Add an `index.js` file next to `App.js`

#### Adding Capybara and RSpec

- Add `rspec-rails`, `capybara`, and `selenium-webdriver` to the both development and test groups of the App's Gemfile
- `Run bundle install`
- `Run rails generate rspec:install`
- Add `test/test_helper.rb` from the root of your app with the following:
    ```
    require 'capybara/rspec'
    
    Capybara.default_driver = :selenium_chrome_headless
  ```
- Add feature tests with the following convention `<your_test>_spec.rb` (refer to line 10 in `spec/rails_helper.rb` for more info).
  - Follow [capybara's docs](https://github.com/teamcapybara/capybara#the-dsl:~:text=database%20setup%20below.-,The%20DSL,-A%20complete%20reference) for ideas, and to properly use the DSL.
  - Run test suite with `bundle exec rspec`

  #### Seeding test data with FactoryBot gem
  - Add `gem 'factory_bot'` to your Gemfile and run `bundle install`
  - Add `config.include FactoryBot::Syntax::Methods` in `rails_helper.rb`
  - Add the following to `spec_helper.rb` inside `RSpec.configure` block.
  
    `config.before(:all) do
      FactoryBot.reload
    end `
  - Add a factories directory with factory files inside of the spec directory following expected format (good place to reference seeds file).
  - Call `FactoryBot.create` to make new test data.