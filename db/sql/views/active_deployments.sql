/*
A query that shows all of the active deployments.
*/
CREATE VIEW active_deployments AS
SELECT
  animals.perm_id,
  species.species_code,
  animals.sex,
  animals.age,
  devices.serial_num,
  deployments.inservice,
  deployments.outservice,
  deployments.animal_id,
  deployments.device_id,
  deployments.id AS deployment_id
FROM ((deployments
  INNER JOIN animals ON deployments.animal_id = animals.id)
  INNER JOIN devices ON deployments.device_id = devices.id)
  INNER JOIN species ON animals.species_id = species.id
WHERE deployments.outservice IS NULL
ORDER BY deployments.inservice DESC;
