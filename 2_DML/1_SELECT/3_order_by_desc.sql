/* user_idとusernameをlogin_countの降順で取得する */
SELECT
    user_id,
    username
FROM
    Users
ORDER BY
    login_count DESC
;
