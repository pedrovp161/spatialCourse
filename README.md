# 🧬 Spatial Transcriptomics Analysis Course

> A practical, method-driven course for **robust spatial transcriptomics analysis** using `AnnData`, MAD-based preprocessing, and advanced spatial methods.

**→ [View full course page (HTML)](spatial-transcriptomics-course.html)**

---

## What This Course Covers

A complete pipeline from raw data to biological insight, built around four pillars:

| | |
|---|---|
| 📐 **Robust Statistics** | MAD-based filtering and outlier detection |
| ⚙️ **Automated Preprocessing** | End-to-end QC with minimal manual steps |
| 🔁 **Reproducible Workflows** | Containerized, structured, consistent |
| 🛠️ **Custom Tooling** | Built around the `spatools` Python package |

---

## Pipeline

```
Raw Data  →  Quality Control  →  MAD Filtering  →  Off-Tissue Removal
    →  Normalization  →  Integration  →  Clustering  →  Spatial Analysis
    →  Biological Insights
```

---

## Curriculum

| # | Module | Level |
|---|--------|-------|
| 01 | **Data Structures** — `AnnData`, spatial metadata, layers | Foundation |
| 02 | **Preprocessing** — MAD outlier detection, tissue-aware filtering, gene renaming | Core |
| 03 | **Clustering Strategy** — silhouette-guided resolution selection | Core |
| 04 | **Data Integration** — multi-sample, batch correction, cross-slide harmonization | Advanced |
| 05 | **Spatial Analysis** — visualization, colocalization, interactive region selection | Advanced |

---

## `spatools` — Core Package

A custom Python package developed for this workflow:

- MAD-based automated preprocessing
- Off-tissue spot removal
- Spatial plotting utilities and multi-slide visualization
- Gene ID → gene name conversion (with safe ID fallback)
- Interactive region selection tools
- Colocalization analysis framework
- AnnData-native API

---

## 🐳 Running with Docker

The full environment is pre-configured in a Docker image — no dependency setup needed.

**1. Pull the image**

```bash
docker pull pedrovp161/spatialcourse:latest
```

**2. Run the container**

```bash
docker run -it \
  -p 8888:8888 \
  pedrovp161/spatialcourse:latest \
  jupyter lab --ip=0.0.0.0 --no-browser --allow-root \
  --NotebookApp.token=''
```

**3. Open in your browser**

```
http://localhost:8888
```

> If `localhost` doesn't resolve (some systems route it to IPv6 first), try the explicit IPv4 address instead:
> ```
> http://127.0.0.1:8888
> ```

---

## Outcomes

By the end of this course you will be able to:

- Build a complete spatial transcriptomics pipeline from scratch
- Apply MAD-based preprocessing and tune thresholds for your data
- Select clustering resolutions in a principled, data-driven way
- Perform advanced spatial analyses including colocalization
- Extend `spatools` and develop your own spatial tools

---

## Target Audience

Computational biologists · Bioinformaticians · Omics data scientists

> Familiarity with Python and basic single-cell concepts is recommended. No prior spatial transcriptomics experience required.
