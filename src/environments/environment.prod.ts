import packageInfo from '../../package.json';

export const environment = {
  appVersion: packageInfo.version,
  production: true,
  apiUrl: 'http://127.0.0.1:4200'  // Cambia esta URL por la URL de tu API
};
