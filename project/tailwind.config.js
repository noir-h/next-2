module.exports = {
// 実際に使用しているjsファイルのみ、デプロイ時にまとめてくれる 
  content: [
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}