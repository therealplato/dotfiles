
    module.exports.decorateConfig = config => {
      return Object.assign({}, config, {
        cursorColor: 'rgba(28, 118, 139, 0.5)',
        foregroundColor: '#efefef',
        backgroundColor: '#171d22',
        borderColor: '#171d22',
        colors: {
          black: '#171d22',
          red: '#0b0b0b',
          green: '#e3d486',
          yellow: '#69ef64',
          blue: '#da5581',
          magenta: '#404040',
          cyan: '#79b6c7',
          white: '#efefef',
          lightBlack: '#3f3f3f',
          lightRed: '#d26b6e',
          lightGreen: '#e3d486',
          lightYellow: '#69ef64',
          lightBlue: '#da5581',
          lightMagenta: '#404040',
          lightCyan: '#79b6c7',
          lightWhite: '#c0f5c5',
        },
      });
    };
  