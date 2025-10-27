import axios from "axios";

// this variable contains /api only so taht the react app calls the api's like
// http://localhost/api/...
// then nginx receives this, sees that it is for the api and forwards it to
// http://api/ inside the docker network.

const BACKENDSERVER = process.env.REACT_APP_BACKENDSERVER
  ? `${process.env.REACT_APP_BACKENDSERVER}`
  : "/api";

console.log("=== Web Configuration ===");
console.log("BACKENDSERVER:", BACKENDSERVER);
console.log("============================");

export default axios.create({
  baseURL: `${BACKENDSERVER}`,
  headers: {
    "Content-type": "application/json",
  },
});
