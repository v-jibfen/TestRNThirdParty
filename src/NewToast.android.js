'use strict';

import {NativeModules} from 'react-native';
// export default NativeModules.NewToastAndroid

var Toast = NativeModules.NewToastAndroid;

function show1(message, duration) {
    Toast.show(message, duration)
}