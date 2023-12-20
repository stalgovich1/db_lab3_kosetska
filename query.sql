-- Запит на вибірку загального рейтингу (weekly_rank) для певного фільму за всі країни:
SELECT ac.show_title, ac.country_name
FROM all_weeks_countries ac
JOIN all_weeks_global ag ON ac.show_title = ag.show_title;

-- Запит на вибірку кількості годин перегляду для кожного фільму в конкретній країні
SELECT ac.show_title, ac.country_name, mp.hours_viewed_first_28_days
FROM all_weeks_countries ac
JOIN most_popular mp ON ac.show_title = mp.show_title
WHERE ac.country_name = 'Argentina';

-- Запит на вибірку загального рейтингу (weekly_rank) для певного фільму за всі країни
SELECT ac.show_title, ac.country_name, ag.weekly_rank
FROM all_weeks_countries ac
JOIN all_weeks_global ag ON ac.show_title = ag.show_title
WHERE ac.show_title = 'Red Notice';