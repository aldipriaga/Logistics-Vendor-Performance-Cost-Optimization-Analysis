# 🚚 Logistics Vendor Performance & Cost Optimization Analysis

## 📌 Project Overview
Proyek ini bertujuan untuk menganalisis efisiensi operasional pengiriman barang dan melakukan optimasi biaya vendor. Analisis dilakukan menggunakan **Python** untuk Exploratory Data Analysis (EDA) dan **Power BI** untuk pembuatan dashboard interaktif guna membantu pengambilan keputusan manajerial.

## 🛠️ Tech Stack
* **Data Analysis:** Python (Pandas, Seaborn, Matplotlib)
* **Data Visualization:** Power BI Desktop
* **Database Simulation:** CSV / Excel Data Source

## 🔍 Key Findings & Insights
Berdasarkan hasil analisis EDA dan Dashboard:
1. **Cost Driver:** Jarak (`distance_km`) ditemukan sebagai penentu biaya utama yang paling konsisten secara linear.
2. **Cost Anomaly:** Terdapat lonjakan `cost_per_kg` pada segmen **Ultra Heavy**, menunjukkan inefisiensi biaya pada muatan besar yang membutuhkan negosiasi ulang tarif vendor.
3. **Vendor Audit:** Beberapa vendor dengan tarif premium tidak memberikan jaminan *on-time delivery* yang lebih baik (H4 terbukti salah).
4. **Energy Efficiency:** (Opsional jika dimasukkan) Kendaraan Listrik (EV) menunjukkan potensi penghematan biaya operasional dibandingkan kendaraan fossil.

## 📊 Dashboard Preview
![Operational Overview]<img width="1365" height="719" alt="image" src="https://github.com/user-attachments/assets/e8bc2357-e385-4573-8a7d-27f92bfe0efe" />

![Deep Analysis]<img width="1365" height="720" alt="image" src="https://github.com/user-attachments/assets/bd3256da-4480-42d8-b436-1acc256487f7" />

## 📁 Repository Structure
* `data/`: Folder berisi dataset (mentah & bersih).
* `notebooks/`: Jupyter Notebook berisi proses EDA, korelasi, dan pembersihan data.
* `reports/`: File `.pbix` Power BI atau PDF export dashboard.
* `README.md`: Penjelasan proyek.

## 🚀 How to Use
1. Clone repositori ini.
2. Buka file `.ipynb` di folder `notebooks/` untuk melihat proses analisis data.
3. Buka file `.pbix` menggunakan Power BI Desktop untuk mengeksplorasi visualisasi interaktif.

---
**Developed by [Muhammad Aldi Priaga]**
*Connect with me on [LinkedIn Link]*
