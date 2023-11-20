/* 性別ごとのlogin_countの平均を取得する */
SELECT
    gender,
    AVG(login_count) AS average_login_count_per_gender
FROM
    Users
GROUP BY
    gender;
