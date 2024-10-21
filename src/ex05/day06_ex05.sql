COMMENT ON TABLE person_discounts IS 'This table stores information about discounts provided to people 
                                            depending on their order frequency and quantity.';

COMMENT ON COLUMN person_discounts.id IS 'Primary key of the table. A unique identifier for each discount';

COMMENT ON COLUMN person_discounts.person_id IS 'Foreign key referencing the person table. 
                                                    Identifies the person who is eligible for the discount. 
                                                        Cannot be NULL.';

COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Foreign key referencing the pizzeria table. 
                                                    Identifies the pizzeria where the discount is applicable. 
                                                        Cannot be NULL.';

COMMENT ON COLUMN person_discounts.discount IS 'Discount value in percentage';

SELECT count(*) = 5 as check FROM pg_description WHERE objoid = 'person_discounts'::regclass