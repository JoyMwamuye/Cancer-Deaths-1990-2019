-- View Kenya Cancer Deaths Data
SELECT*
FROM [Kenya Cancer Deaths]

--Total Deaths per cancer type (1990-2019)
SELECT
    [YEAR],
    SUM(Liver_Cancer) AS LiverCancer,
    SUM(Kidney_Cancer) AS KidneyCancer, 
    SUM(Lip_Oral_Cavity_Cancer) AS LipandOralCancer,
    SUM(Tracheal_bronchus_and_lung_cancer) AS TrachealBronchusandLungCancer, 
    SUM(Larynx_cancer) AS LarynxCancer,
    SUM(Gallbladder_and_biliary_tract_cancer) AS GallbladderandBiliaryCancer,
    SUM(Malignant_skin_melanoma) AS MalignantSkinMelanoma,
    SUM(Leukemia) AS Leukemia,
    SUM(Hodgkin_lymphoma) AS HodgkinLymphoma,
    SUM(Multiple_myeloma) AS MultipleMyeloma,
    SUM(Other_neoplasms) AS OtherNeoplasms, 
    SUM(Breast_cancer) AS BreastCancer,
    SUM(Prostate_cancer) AS ProstateCancer,
    SUM(Thyroid_cancer) AS ThyroidCancer,
    SUM(Stomach_cancer) AS StomachCancer,
    SUM(Bladder_cancer) AS BladderCancer,
    SUM(Uterine_cancer) AS UterineCancer, 
    SUM(Ovarian_cancer) AS OvarianCancer, 
    SUM(Cervical_cancer) AS CervicalCancer, 
    SUM(Brain_and_central_nervous_system_cancer) AS NeuronalCancersCancers,
    SUM(Non_Hodgkin_lymphoma) AS NonHodgkinLymphoma, 
    SUM(Pancreatic_cancer) AS PancreaticCancer,
    SUM(Esophageal_cancer) AS EsophagealCancer, 
    SUM(Testicular_cancer) AS TesticularCancer, 
    SUM(Nasopharynx_cancer) AS NasopharynxCancer,
    SUM(Other_pharynx_cancer) AS OtherPharynxCancers, 
    SUM(Colon_and_rectum_cancer) AS ColonandRectumCancer, 
    SUM(Non_melanoma_skin_cancer) AS NonMelanomaSkinCancer, 
    SUM(Mesothelioma) AS MesotheliomaCancer
FROM [Kenya Cancer Deaths]
--Total Cancer Deaths per cancer type for the last 10 years
--WHERE [Year] > 2009
GROUP BY [Year]
ORDER BY [Year] ASC


--Top 5 Killing Cancers
SELECT 
    SUM(Esophageal_cancer) AS EsophagealCancer,
    SUM(Stomach_cancer) AS StomachCancer,
    SUM(Breast_cancer) as BreastCancer, 
    SUM(Cervical_cancer) AS CervicalCancer, 
    SUM(Prostate_cancer) as ProstateCancer
FROM [Kenya Cancer Deaths]


--Prostate vs Cervical Cancers accounting for deaths greater than 1200 over the last 5 years
SELECT
    [YEAR],
    SUM(Prostate_cancer) AS Prostate,
    SUM(Cervical_cancer) AS Cervical
FROM [Kenya Cancer Deaths]
WHERE [Year] > 2014
GROUP BY [Year]
HAVING SUM(Prostate_cancer) > 1200
    AND SUM(Cervical_cancer) > 1200
ORDER BY [Year] DESC 


--Reproductive cancers 
SELECT
    [YEAR],
    SUM(Breast_cancer) AS BreastCancer, 
    --Exclusively male cancers 
    SUM(Prostate_cancer) AS ProstateCancer,
    SUM(Testicular_cancer) AS TesticularCancer,
    --Exclusively female cancers 
    SUM(Uterine_cancer) AS UterineCancer, 
    SUM(Ovarian_cancer) AS OvarianCancer, 
    SUM(Cervical_cancer) AS CervicalCancer
FROM [Kenya Cancer Deaths]
GROUP BY [Year]


--Renal cancers
SELECT 
    [YEAR],
    SUM(Kidney_Cancer) AS KidneyCancer, 
    SUM(Bladder_cancer) AS BladderCancer
FROM [Kenya Cancer Deaths]
GROUP BY [Year]
ORDER BY [Year] ASC


--Skin Cancers
SELECT
    [YEAR] AS Year,
    SUM(Malignant_skin_melanoma) AS MalignantSkinMelanoma,
    SUM(Non_melanoma_skin_cancer) AS NonMelanomaSkinCancer
FROM [Kenya Cancer Deaths]
GROUP BY [Year]
ORDER BY Year ASC


--Upper respiratory tract cancers 
SELECT
    [Year], 
    SUM(Tracheal_bronchus_and_lung_cancer) AS TrachealBronchusandLungCancer,
    SUM(Larynx_cancer) AS LarynxCancer, 
    SUM(Nasopharynx_cancer) AS NasopharynxCancer,
    SUM(Other_pharynx_cancer) AS OtherPharynxCancers
FROM [Kenya Cancer Deaths]
GROUP BY [Year] 


--Digestive tract cancers
SELECT 
    [Year],
    SUM(Esophageal_cancer) AS EsophagealCancer, 
    SUM(Stomach_cancer) AS StomachCancer,
    SUM(Liver_Cancer) AS LiverCancer, 
    SUM(Gallbladder_and_biliary_tract_cancer) AS GallbladerandBiliaryCancer, 
    SUM(Pancreatic_cancer) AS PancreaticCancer,
    SUM(Colon_and_rectum_cancer) AS ColonandRectumCancer, 
    SUM(Lip_Oral_Cavity_Cancer) AS LipandOralCancer
FROM [Kenya Cancer Deaths]
GROUP BY [Year]
ORDER BY [Year] ASC


--Blood cancers
SELECT 
    [Year], 
    SUM(Leukemia) AS Leukemia, 
    SUM(Multiple_myeloma) AS MultipleMyeloma, 
    SUM(Other_neoplasms) AS OtherNeoplasms, 
    SUM(Hodgkin_lymphoma) AS HodgkinLymphoma, 
    SUM(Non_Hodgkin_lymphoma) AS NonHodgkinLymphona
FROM [Kenya Cancer Deaths]
GROUP BY [Year]


--Endocrine cancers
SELECT
    [Year], 
    SUM(Thyroid_cancer) AS ThyroidCancer 
FROM [Kenya Cancer Deaths]
GROUP BY [Year]


--Neuronal cancers
SELECT
    [Year], 
    SUM(Brain_and_central_nervous_system_cancer) AS NeuronalCancers
FROM [Kenya Cancer Deaths]
GROUP BY [Year]


--Other cancers
SELECT 
    [Year], 
    SUM(Mesothelioma) AS MesotheliomaCancer
FROM [Kenya Cancer Deaths]
GROUP BY [Year]
