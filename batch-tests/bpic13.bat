ECHO Start Measure %Time%

"C:\Program Files\Java\jdk-11.0.6\bin\java" -Xmx20G -cp MINERful.jar;lib\* minerful.MinerFulMinerStarter -iLF .\logs\b13a.xes -iLE xes -oJSON .\logs\b13a.xes-model.json -oCSV .\logs\b13a.xes-model.csv -s 0.5 -c 0.0 -vShush true --no-screen-print-out

"C:\Program Files\Java\jdk-11.0.6\bin\java" -Xmx20G -cp MINERful.jar minerful.MinerFulMinerStarter -iLF .\logs\b13b.xes -iLE xes -oJSON .\logs\b13b.xes-model.json -oCSV .\logs\b13b.xes-model.csv -s 0.5 -c 0.0 -vShush true --no-screen-print-out

"C:\Program Files\Java\jdk-11.0.6\bin\java" -Xmx20G -cp Janus.jar minerful.JanusVariantAnalysisStarter -iLE1 xes -iLF1 .\logs\b13a.xes -iLE2 xes -iLF2 .\logs\b13b.xes -measure Confidence -pValue 0.01 -permutations 1000 -oCSV .\bpi13-res.csv --no-screen-print-out -simplify -differenceThreshold 0.01 -iMF1 .\logs\b13a.xes-model.json -iMF2 .\logs\b13b.xes-model.json -iME1 JSON -iME2 JSON

ECHO End Measure %Time%