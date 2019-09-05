const uploadBtn = () => {
  const listener = document.getElementById('messenger-listener');
  if (listener) {
    listener.addEventListener('click', (event) => {
      if (event.target.id === 'icon_upload_picture') {
        document.getElementById("btn-to-click").click();
      }
    })
  }
  // const Upl = document.getElementById("icon_upload_picture");
  // if (Upl) {
  //   Upl.addEventListener("click", (event) => {
  //     document.getElementById("btn-to-click").click();
  //   });
  // }
};

const sendBtn = () => {
  const listener = document.getElementById('messenger-listener');
  if (listener) {
    listener.addEventListener('click', (event) => {
      if (event.target.id === 'icon_send') {
        document.getElementById("btn-submit-hidden").click();
      }
    })
  }
  // const Send = document.getElementById("icon_send");
  // if (Send) {
  //   Send.addEventListener("click", (event) => {
  //     document.getElementById("btn-submit-hidden").click();
  //   });
  // }
};

const scrollToBottom = () => {
  //const lst = document.getElementById("my-chat-list");
  //lst.scrollIntoView(false); // Bottom
  const allMessages = document.querySelectorAll('.small-box.messenger-list.messenger-font');
  const last = allMessages[allMessages.length - 1]
  if (last) {
    last.scrollIntoView(false); // Bottom
  }
};

export { uploadBtn };
export { sendBtn };
export { scrollToBottom };
