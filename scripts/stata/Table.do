clear all
set more off //run the commands continuously without worrying about the capacity of the Results window to display the results




use "IFPRI NIGER - EVALUATION DES CAPACITES_Hema.dta",clear

*Region , I.9. 11.	Identify the food systems impact areas that your organization works on
tab region count_sel_dom, row

ssc install tabout
tabout region count_sel_dom using Tables_pop.xls  , c(col) f(1) append



/*
Nutrition, health, and food security
Poverty reduction, livelihoods, and jobs
Gender equality, youth, and social inclusion
Climate adaptation and mitigation
Environmental health and biodiversity
*/

tabout region if dom_1==1 using Tables_pop.xls  , c(col) clab("Nutrition, health, and food security") f(1) append //Nutrition, health, and food security
tabout region if dom_2==1 using Tables_pop.xls  , c(col) clab("Poverty reduction, livelihoods, and jobs") f(1) append //
tabout region if dom_3==1 using Tables_pop.xls  , c(col) clab("Gender equality, youth, and social inclusion") f(1) append //
tabout region if dom_4==1 using Tables_pop.xls  , c(col) clab("Climate adaptation and mitigation") f(1) append //
tabout region if dom_5==1 using Tables_pop.xls  , c(col) clab("Environmental health and biodiversity") f(1) append //


//I.10. What is your organization's role in the : <strong>${name_dom}</strong> ?


/*

Support for agriculture and food security
Managing natural resources
Combating malnutrition
Food information systems
Capacity building
Support for food governance
Environmental education
Protecting biodiversity
Climate change adaptation
Collaboration with other ministries
Regulation and compliance
Research/Innovation/Knowledge
Financing agricultural projects
Rural development
Support for agricultural policies
Food-related disease control
Nutrition promotion
Crisis and disaster management
Monitoring population movements
Food trade data collection
Trade facilitation
Smuggling prevention
Sanitary and phytosanitary control
Other ( specify )

*/