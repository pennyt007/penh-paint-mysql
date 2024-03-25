
CREATE EVENT `event_processApprovedPointsOfProgress`
  ON SCHEDULE EVERY 1 MINUTE
  STARTS '2023-01-01 00:00:00'
  ENDS '2023-12-31 00:00:00'
  ON COMPLETION NOT PRESERVE ENABLE
DO 
  call sp_processApprovedPointsOfProgress();
