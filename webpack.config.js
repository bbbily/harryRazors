module.exports = {
  entry: "./index.js",
  output: {
    filename: "./index.min.js"
  },
  module: {
    loaders: [
      {
        test: /\.scss$/,
        loader: "style-loader!css-loader!sass-loader"
      },
      {
        test: /\.css$/,
        loader: "style-loader!css-loader"
      }
    ]
  }
}
