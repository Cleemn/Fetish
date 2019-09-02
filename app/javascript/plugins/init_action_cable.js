import { scrollLastMessageIntoView } from './scroll.js';

const initActionCable = () => {
  const connect = document.getElementById('connect-action-cable');
  if (connect) {
    const matchId = connect.dataset.matchId
    App[`matches_chat_${matchId}`] = App.cable.subscriptions.create(
      { channel: 'MatchesChatChannel', match_id: matchId },
      { received: (data) => {
        // select messages list
        const currentUserId = parseInt(connect.dataset.currentUserId, 10);
        if (data.message_user_id !== currentUserId) {
          const MyChatListId = document.getElementById('my-chat-list');
          MyChatListId.insertAdjacentHTML("beforeend", data.message_partial);
          // document.getElementById('message_content').value = "";-> cette ligne fout la merde dans le form
           scrollLastMessageIntoView();
        }

        // insert new message at the end of the list
        // console.log(data.message_partial)
      } }
    )
  }
}

export { initActionCable };
