'use strict';

import {NativeModules} from 'react-native';
var Toast = NativeModules.ToastManager;

const CreateAndroid = {

  // Toast duration constants
  SHORT: (Toast.getConstants().SHORT: number),
  LONG: (Toast.getConstants().LONG: number),
  // Toast gravity constants
  TOP: (Toast.getConstants().TOP: number),
  BOTTOM: (Toast.getConstants().BOTTOM: number),
  CENTER: (Toast.getConstants().CENTER: number),

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