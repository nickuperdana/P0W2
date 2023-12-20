SELECT 
  LEFT(Filing_Date, 4) as year,
  SUBSTR(Filing_Date, 5, 2) as month,
  COUNT(Filing_Date) as total_patent
FROM patents-public-data.uspto_oce_cancer.publications
WHERE Patent_Title LIKE '%Data%'
GROUP BY year, month
ORDER BY year DESC, month DESC;