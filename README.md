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

- Add `rspec-rails`, `capybara`, and `selenium-webdriver` to the both development and test groups of the apps Gemfile
- `Run bundle install`
- `Run rails generate rspec:install`
- Add `test/test_helper.rb` from the root of your app

  Add:
    ```
    require 'capybara/rspec'
    
    Capybara.default_driver = :selenium_chrome_headless
  ```
- Add feature tests with the following convention `<your_test>_spec.rb` (refer to line 10 in `spec/rails_helper.rb` for more info).
  - Follow [docs](https://github.com/teamcapybara/capybara#the-dsl:~:text=database%20setup%20below.-,The%20DSL,-A%20complete%20reference) for ideas, and to properly use the DSL.
  - Run test suite with `bundle exec rspec`