const initActionCable = () => {
  const connect = document.getElementById('connect-action-cable');
  if (connect) {
    const matchId = connect.dataset.matchId
    App[`matches_chat_${matchId}`] = App.cable.subscriptions.create(
      { channel: 'MatchesChatChannel', match_id: matchId },
      { received: (data) => {
        // select messages list
        // const MyChatListId = document.getElementById('my-chat-list');
        // MyChatListId.insertAdjacentHTML("beforeend", data.message_partial);
        // document.getElementById('message_content').value = "";
        // scrollLastMessageIntoView();
        // insert new message at the end of the list
        // console.log(data.message_partial)
      } }
    )
  }
}

export { initActionCable };

// beug de front a fixer apres
// notre formulaire ne revient pas a blank
// le message ne semble pas s'envoyer alors qu'il s'envoie de l'autre cote
// mettre en place correctement le scroll
