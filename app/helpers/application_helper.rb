module ApplicationHelper
  # 渡されたユーザー=ログイン済みユーザーの判別
  def current_user?(user)
    user == current_user
  end
end
