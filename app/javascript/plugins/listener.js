const pressEnter = (event) => {
  const btnSend = document.getElementById("btn-submit-hidden");
  if (event.key === 'Enter') {
    // messageContent;
    btnSend.click();
  }
};

const sendMessageAutomatically = () => {
  const messageContent = document.getElementById("message_content");
  if (messageContent) {
    messageContent.addEventListener("keyup", pressEnter);
  }
};

export { sendMessageAutomatically };

