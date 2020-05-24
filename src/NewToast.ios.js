'use strict';

import {NativeModules} from 'react-native';
var Toast = NativeModules.ToastManager;

const CreateAndroid = {

  // Toast duration constants
  SHORT: (Toast.SHORT: number),
  LONG: (Toast.LONG: number),
  // Toast gravity constants
  TOP: (Toast.TOP: number),
  BOTTOM: (Toast.BOTTOM: number),
  CENTER: (Toast.CENTER: number),

  show: function(message: string, duration: number): void {
    Toast.show(message, duration);
  },

  showWithGravity: function(
    message: string,
    duration: number,
    gravity: number,
  ): void {
    Toast.showWithGravity(message, duration, gravity);
  },
};

module.exports = CreateAndroid;