import firestore from '@react-native-firebase/firestore';

const configurationKeys = {
    TOKEN: 'token',
};

async function getToken() {
    return getConfiguration(configurationKeys.TOKEN);
}

let configuration;

async function getConfiguration(key) {
    if (!configuration) {
        configuration = await firestore().collection('configuration').doc('4SCToWpYovsCuyVljoyO').get();
    }

    return configuration._data[key];
}


export {getToken, getConfiguration, configurationKeys};
