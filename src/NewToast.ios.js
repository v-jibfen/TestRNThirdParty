'use strict';

import {NativeModules} from 'react-native';
var Toast = NativeModules.ToastManager;

const CreateAndroid = {

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