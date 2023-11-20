/* ユーザー情報とログイン情報を結合してユーザー情報とログイン情報を取得する */
SELECT
  users.*,
  login_activity.login_time,
  login_activity.ip_address,
  login_activity.device
FROM
  users
JOIN
  login_activity ON users.id = login_activity.user_id;
