# LeetCode 1141. User Activity for the Past 30 Days I

# Problem:
# Find the daily active user count for a period of 30 days ending
# on 2019-07-27 (inclusive).
#
# A user is considered active if they performed at least one activity
# on a given day.
#
# Valid activities:
# - open_session
# - end_session
# - scroll_down
# - send_message
#
# Return the result table in any order.

# Solution:

SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY)
                        AND '2019-07-27'
GROUP BY activity_date;
