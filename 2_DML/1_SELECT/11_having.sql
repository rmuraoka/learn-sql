/* 各性別で平均ログイン回数が5回を超えるグループを取得する */
SELECT
    gender,
    AVG(login_count) AS average_login_count
FROM
    Users
GROUP BY
    gender
HAVING
    average_login_count > 5;
