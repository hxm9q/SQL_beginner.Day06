SELECT DISTINCT
    p.name,
    m.pizza_name,
    m.price,
    ROUND(
        m.price - m.price * COALESCE(pd.discount / 100, 0)
    )::integer AS discount_price,
    pz.name AS pizzeria_name
FROM
    person_order po
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    JOIN person p ON po.person_id = p.id
    JOIN person_discounts pd ON po.person_id = pd.person_id
    AND m.pizzeria_id = pd.pizzeria_id
ORDER BY p.name, m.pizza_name