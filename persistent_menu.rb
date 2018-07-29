class PersistentMenu
  def self.enable
    Facebook::Messenger::Thread.set({
      setting_type: 'call_to_actions',
      thread_state: 'existing_thread',
      call_to_actions: [
        {
          type: 'postback',
          title: 'New order',
          payload: 'NEW_ORDER'
        },
        {
          type: 'postback',
          title: 'Previous order',
          payload: 'PREVIOUS_ORDER'
        }
      ]
    }, access_token: ENV['ACCESS_TOKEN'])
  end
end
