all<-read.csv("Raw Data 2015.csv")
#data1
var1<-c("UNITID","INSTNM","ZIP","INSTURL","LATITUDE","LONGITUDE","ADM_RATE",
        "Rank","SATVR25","SATVR75","SATMT25","SATMT75","SATWR25","SATWR75",
        "SATVRMID",	"SATMTMID","SATWRMID","ACTCM25","ACTCM75","ACTEN25",
        "ACTEN75","ACTMT25","ACTMT75","ACTWR25","ACTWR75","ACTCMMID","ACTENMID",
        "ACTMTMID","ACTWRMID","SAT_AVG","PCIP01","PCIP03","PCIP04","PCIP05",
        "PCIP09","PCIP10","PCIP11","PCIP12","PCIP13","PCIP14"	,"PCIP15",
        "PCIP16","PCIP19","PCIP22","PCIP23","PCIP24","PCIP25","PCIP26","PCIP27",
        "PCIP29","PCIP30","PCIP31","PCIP38","PCIP39","PCIP40","PCIP41","PCIP42",
        "PCIP43","PCIP44","PCIP45","PCIP46","PCIP47","PCIP48","PCIP49","PCIP50",
        "PCIP51","PCIP52","PCIP54","COSTT4_A","UGDS_MEN","UGDS_WOMEN",
       "UGDS_WHITE", "UGDS_BLACK","UGDS_HISP", 
        "UGDS_ASIAN","UGDS_AIAN","UGDS_NHPI","UGDS")
data1<-all[,var1]
arrest.2014<-read.csv("Arrests_On_campus.csv")
arrest.2014$total<-rowSums(arrest.2014[,7:9])
arrest.2014<-cbind(arrest.2014$Unitid,arrest.2014$total)
colnames(arrest.2014)<-c("UNITID","Arrest")
arrest.2014df=as.data.frame(arrest.2014)
a=aggregate(Arrest~UNITID,data=arrest.2014df,sum)
t<-merge(data1,a)  



