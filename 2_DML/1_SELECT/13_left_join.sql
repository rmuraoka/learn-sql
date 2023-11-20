/* ユーザー情報とログイン情報を結合してユーザー情報とログイン情報を取得する */
SELECT
  users.id,
  users.username,
  users.email,
  users.gender,
  users.date_of_birth,
  users.login_count,
  login_activity.login_time,
  login_activity.ip_address,
  login_activity.device
FROM
  users
LEFT JOIN
  login_activity ON users.id = login_activity.user_id;
