# Hydraulic Modelling Portfolio (GIS · SQL · Analytics)

Public demo for a hydraulic-modelling role. It shows:
- A Leaflet web map with stylised pipes/nodes (PRV highlighted).
- KPI tiles and a line chart fed by a CSV timeseries.
- Example SQL schema/queries (see `sql/schema.sql`).

## Live site (GitHub Pages)
Enable Pages in **Settings → Pages** with source `main` and folder `/docs`.
Your site will be available at: `https://<your-username>.github.io/hydro-portfolio/`

## Structure
```
docs/
  index.html
  data/
    network.geojson
    sensors.csv
sql/
  schema.sql
```

## Data
Synthetic, Adelaide-centred coords, 24h hourly timeseries for pressure (m) and flow (L/s).

## Customize
- Add more pipes/nodes (GeoJSON).
- Extend `sensors.csv` with more timestamps/zones.
- Adjust colours/sizes in `index.html` styles.
- Link this repo in the top-right badge (replace `your-username`).

## License
MIT — use freely.
