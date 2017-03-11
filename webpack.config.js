var webpack = require("webpack")
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
      },
      {
        test: /\.(jpe?g|png|gif|svg)$/i,
        loaders: [
          'file-loader?hash=sha512&digest=hex&name=[hash].[ext]',
          'image-webpack-loader?bypassOnDebug&optimizationLevel=7&interlaced=false'
        ]
      },
      {
        test: /\.(ttf|eot|woff|woff2|svg)$/,
        loader: "url-loader?limit=50000&name=fonts/[hash].[ext]"
      }
    ]
  },
  watch: true
}
