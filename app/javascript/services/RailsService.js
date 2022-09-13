import http from "../http-common";
const getRandomMessage = () => {
  return http.get("/messages");
};
const RailsService = {
  getRandomMessage
};
export default RailsService;
