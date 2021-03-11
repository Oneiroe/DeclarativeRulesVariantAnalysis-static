ECHO Start Measure %Time%

"C:\Program Files\Java\jdk-11.0.6\bin\java" -Xmx20G -cp MINERful.jar;lib\* minerful.MinerFulMinerStarter -iLF .\logs\rtfmp1.xes -iLE xes -oJSON .\logs\rtfmp1.xes-model.json -oCSV .\logs\rtfmp1.xes-model.csv -s 0.50 -c 0.0 -vShush true --no-screen-print-out

"C:\Program Files\Java\jdk-11.0.6\bin\java" -Xmx20G -cp MINERful.jar minerful.MinerFulMinerStarter -iLF .\logs\rtfmp2.xes -iLE xes -oJSON .\logs\rtfmp2.xes-model.json -oCSV .\logs\rtfmp2.xes-model.csv -s 0.50 -c 0.0 -vShush true --no-screen-print-out

"C:\Program Files\Java\jdk-11.0.6\bin\java" -Xmx20G -cp Janus.jar minerful.JanusVariantAnalysisStarter -iLE1 xes -iLF1 .\logs\rtfmp1.xes -iLE2 xes -iLF2 .\logs\rtfmp2.xes -measure Confidence -pValue 0.01 -permutations 1000 -oCSV .\rtfmp-res.csv --no-screen-print-out -simplify -differenceThreshold 0.01 -iMF1 .\logs\rtfmp1.xes-model.json -iMF2 .\logs\rtfmp2.xes-model.json -iME1 JSON -iME2 JSON

ECHO End Measure %Time%