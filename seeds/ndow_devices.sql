-- seed ndow devices into device table

COPY devices (
  serial_num,
  frequency,
  vendor,
  device_type,
  model,
  mfg_date
)
FROM '/Users/mitchellgritts/Documents/telemetr/telemetr-data/devices.csv' WITH (FORMAT csv, DELIMITER ',', HEADER true);