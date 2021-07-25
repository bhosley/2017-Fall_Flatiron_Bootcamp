const app = "I don't do much.";

const token = dfab1afde9e561e254ef6f84f6acf32276f8c924
fetch('https://api.github.com/user/repos', {
  headers: {
    Authorization: `token ${token}`
  };
}).then(res => res.json()).then(json => console.log(json));
