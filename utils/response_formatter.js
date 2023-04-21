const response = (statusCode, data, message, res) => {
  res.status(statusCode).json({
    status_code: statusCode,
    messages: message,
    payload: {
      datas: data,
    },
  });
};

module.exports = response;
