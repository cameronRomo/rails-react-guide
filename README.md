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
