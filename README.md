# Phoenix + Sass

## Phoenix / Elixir
Create a new Phoenix app named "phoenix_sass"<br />
  `$ mix phx.new phoenix_sass`

We are almost there! The following steps are missing:<br />
  `$ cd phoenix_sass`

Then configure your database in config/dev.exs and run:<br />
  `$ mix ecto.create`

Start your Phoenix app with:<br />
  `$ mix phx.server`

You can also run your app inside IEx (Interactive Elixir) as:<br />
  `$ iex -S mix phx.server`

#### Start Up the app
  `$ mix deps.get`
  
  `$ mix deps.compile`
  
  `$ cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development`
  
  `$ mix phx.server`

## Setup SASS with Webpack
Modify webpack.config.js to accept .css or .scss extension and add `sass-loader` to dependencies.
```
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader'
        }
      },
      {
        test: /\.s?css$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader']
      }
    ]
  }
```
#### Install `node-sass` and `sass-loader`.
`$ cd assets`

`$ npm install --save-dev node-sass sass-loader`

#### Rename app.css to app.scss and change the path in app.js to reflect the updated file name.
`import css from "../css/app.scss"`

At this point you can import scss files to the app.scss file.

## Production 
Ready to run in production? Please [check our phoenix deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
