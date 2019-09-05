const uploadBtn = () => {
  const Upl = document.getElementById("icon_upload_picture");
  Upl.addEventListener("click", (event) => {
    document.getElementById("btn-to-click").click();
  });

};

const sendBtn = () => {
  const Send = document.getElementById("icon_send");
  Send.addEventListener("click", (event) => {
    document.getElementById("btn-submit-hidden").click();
  });

};

const scrollToBottom = () => {
  //const lst = document.getElementById("my-chat-list");
  //lst.scrollIntoView(false); // Bottom
  const new_msg = document.getElementById("new_message");
  new_msg.scrollIntoView(false); // Bottom
};

export { uploadBtn };
export { sendBtn };
export { scrollToBottom };
