/* user_idとusernameをlogin_countの昇順で取得する */
SELECT
    user_id,
    username
FROM
    users
ORDER BY
    login_count ASC
;
