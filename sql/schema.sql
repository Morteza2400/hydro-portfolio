-- Nodes
CREATE TABLE nodes (
  node_id TEXT PRIMARY KEY,
  x DOUBLE PRECISION, y DOUBLE PRECISION,
  elev_m DOUBLE PRECISION,
  node_type TEXT -- 'Junction'|'PRV'|'Reservoir'
);

-- Pipes
CREATE TABLE pipes (
  pipe_id TEXT PRIMARY KEY,
  from_node TEXT,
  to_node TEXT,
  diameter_mm DOUBLE PRECISION,
  roughness DOUBLE PRECISION
);

-- PRV settings
CREATE TABLE prvs (
  prv_id TEXT PRIMARY KEY,
  node_id TEXT,
  setpoint_m DOUBLE PRECISION,
  min_outlet_m DOUBLE PRECISION
);

-- Timeseries
CREATE TABLE sensor_ts (
  ts TIMESTAMP,
  node_id TEXT,
  pressure_m DOUBLE PRECISION,
  flow_ls DOUBLE PRECISION,
  zone TEXT
);

-- Example analytics
SELECT zone, date_trunc('hour', ts) AS hr,
       avg(pressure_m) AS avg_p, max(flow_ls) AS max_q
FROM sensor_ts
GROUP BY 1,2
ORDER BY 2;
