
    module.exports.decorateConfig = config => {
      return Object.assign({}, config, {
        cursorColor: 'rgba(191, 101, 240, 0.5)',
        foregroundColor: '#474247',
        backgroundColor: '#FFFCFF',
        borderColor: '#FFFCFF',
        colors: {
          black: '#FFFCFF',
          red: '#F03E4D',
          green: '#97BD2D',
          yellow: '#EEBA21',
          blue: '#53A6E1',
          magenta: '#EE4EB8',
          cyan: '#1FC598',
          white: '#474247',
          lightBlack: '#E0DCE0',
          lightRed: '#F37735',
          lightGreen: '#97BD2D',
          lightYellow: '#EEBA21',
          lightBlue: '#53A6E1',
          lightMagenta: '#EE4EB8',
          lightCyan: '#1FC598',
          lightWhite: '#282629',
        },
      });
    };
  