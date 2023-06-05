insert into account (uid, iban, balance, person_id)
values
    ('1f0e3dad99908345f7439f8ffabdffc4', 'ES1234567890123456789012', 1000.00, 6),
    ('098f6bcd4621d373cade4e832627b4f6', 'DE9876543210987654321098', 500.00, 7),
    ('875f9e794323b453885f5181f1b624d0b', 'FR6543210987654321098765', 750.50, 8),
    ('d3d9446802a44259755d38e6d163e820', 'IT9876543210987654321098', 1500.25, 9),
    ('6512bd43d9caa6e02c990b0a82652dca', 'GB5432109876543210987654', 2000.00, 10),
    ('32561bd43d9caa6e02c990b0a82652dca', 'US2109876543210987654321', 300.75, 6)
on conflict (uid) do nothing;