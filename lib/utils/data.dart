// ignore_for_file: public_member_api_docs, sort_constructors_first
class Data {
  String category, title, link, level, type, language, description;
  dynamic image;

  Data({
    required this.language,
    required this.title,
    required this.category,
    required this.level,
    required this.type,
    required this.link,
    required this.description,
    required this.image,
  });
}

List<Data> allData = [
  Data(
    image:
        "http://www.nasa.gov/sites/default/files/thumbnails/image/edu_remote_sensing_large.jpg",
    language: "English",
    title: "Radar Remote Sensing",
    category: "Agriculture",
    level: "Introductory",
    type: "Online",
    description:
        "This training will outline the basics of ecosystem services and natural capital accounting. It will also provide an overview of how Earth Observations (EO) can be used to support global frameworks",
    link:
        "https://appliedsciences.nasa.gov/join-mission/training/english/arset-evaluating-ecosystem-services-remote-sensing",
  ),
  Data(
    image:
        "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-07/Website_Header.jpg?h=3a51b6cd&itok=-HdXXrvj",
    language: "English",
    title:
        "Agricultural Crop Classification with Synthetic Aperture Radar and Optical Remote Sensing",
    category: "All",
    level: "Introductory",
    type: "Online",
    description:
        "This training will combine basic information on the remote sensing of AVs, spectrometry of aquatic/coastal vegetation, and a demonstration of the NASA-funded Floating Forests citizen science tool.",
    link:
        "https://appliedsciences.nasa.gov/join-mission/training/english/arset-monitoring-aquatic-vegetation-remote-sensing ",
  ),
  Data(
    image:
        "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-02/GPM_IMERG_Header_v2.jpg?h=3a51b6cd&itok=kCdxZAZO",
    language: "English",
    title:
        "Applications of GPM IMERG Reanalysis for Assessing Extreme Dry and Wet Periods",
    category: "Climate",
    level: "Introductory",
    type: "Online",
    description:
        "This training supports quantitative and visual understanding of short- and long-term conflict effects that are evident in satellite imagery, complements analysis of georeferenced humanitarian data",
    link:
        " https://appliedsciences.nasa.gov/join-mission/training/english/arset-humanitarian-applications-using-nasa-earth-observations ",
  ),
  Data(
    image:
        "http://www.nasa.gov/sites/default/files/thumbnails/image/15-115.jpg",
    language: "English",
    title:
        "Applications of Remote Sensing-Based Evapotranspiration Data Products for Agricultural and Water Resource Management",
    category: "Climate",
    level: "Introductory",
    description:
        "his introductory four-part webinar series will provide an overview of atmospheric carbon dioxide measurements from space with the OCO-2 and OCO-3 satellite missions",
    type: "Online",
    link:
        " https://appliedsciences.nasa.gov/join-mission/training/english/arset-measuring-atmospheric-carbon-dioxide-space-support-climate ",
  ),
  Data(
    image:
        "http://www.nasa.gov/sites/default/files/thumbnails/image/15-115.jpg",
    language: "English",
    title: "Atmospheric CO2 and CH4 Budgets to Support the Global Stocktake",
    category: "Climate",
    level: "Introductory",
    type: "Online",
    description: "",
    link:
        " https://appliedsciences.nasa.gov/join-mission/training/english/arset-atmospheric-co2-and-ch4-budgets-support-global-stocktake ",
  ),
  Data(
    image:
        "https://www.earthdata.nasa.gov/s3fs-public/imported/SDG_EO.jpg?VersionId=.7gE6RB7V2qDBJw41O4PP3CtI8TPF55D",
    language: "English",
    title:
        "Earth Observations for Monitoring the UN Sustainable Development Goals",
    category: "Disasters",
    level: "Introductory",
    type: "Online",
    description:
        "This training will explore how to combine this information to produce a more complete and transparent global stocktake, and support efforts to reduce net emissions and mitigate their impact on the climate.",
    link:
        " https://appliedsciences.nasa.gov/join-mission/training/english/arset-earth-observations-toolkit-sustainable-cities-and-human  ",
  ),
  Data(
    image:
        "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-02/Website_Header_v2_9.png?h=3a51b6cd&itok=YATc85vC",
    language: "English",
    title: "Forest Mapping and Monitoring with SAR Data",
    category: "Disasters",
    level: "Introductory",
    type: "Online",
    link:
        "https://appliedsciences.nasa.gov/join-mission/training/english/arset-introduction-nasa-resources-climate-change-applications ",
    description:
        "This two-part, introductory webinar series, co-produced by ARSET and the NASA Goddard Institute for Space Studies (GISS), will provide an overview of NASA resources for monitoring climate chang",
  ),
  Data(
    image:
        "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-02/Website_Header_v2.png?h=3a51b6cd&itok=qQ3ety3h",
    language: "English",
    title: "Hyperspectral Data for Land and Coastal Systems",
    category: "Disasters",
    level: "Introductory",
    type: "Online",
    description:
        "This training will offer participants an introduction to how NASA EOs can contribute to a greater understanding of energy management applications. The course will summarize priorities and challenges for energy management",
    link:
        " https://appliedsciences.nasa.gov/join-mission/training/english/arset-nasa-earth-observations-energy-management ",
  ),
  Data(
    image: "https://i.ytimg.com/vi/f3RHfO1LNLg/maxresdefault.jpg",
    language: "English",
    title: "	Introducción al Radar de Apertura Sintética",
    description:
        "This 2-part training, developed and presented by members of the POPGRID Data Collaborative, will focus on the different global population grids and their application",
    category: "Disasters",
    level: "Introductory",
    type: "Online",
    link:
        "  https://appliedsciences.nasa.gov/join-mission/training/english/arset-introduction-population-grids-and-their-integration-remote  ",
  ),
  Data(
    image:
        "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-02/GPM_Header_v2.png?h=3a51b6cd&itok=LKb3nYlX",
    language: "English",
    title:
        " Introduction to Global Precipitation Measurement (GPM) Data and Applications",
    category: "Disasters",
    level: "Introductory",
    type: "Online",
    description:
        "This training, developed and presented by members of the POPGRID Data Collaborative, will focus on the different global population grids and their application to a range of topics related to development planning and monitoring of the SDGs ",
    link:
        "https://appliedsciences.nasa.gov/join-mission/training/english/arset-use-solar-induced-fluorescence-and-lidar-assess-vegetation",
  ),
  Data(
    image:
        "https://climate.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBZ1FzIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f1a382edd65cf332ba59cd8e1694add822669a62/iss064e033237-1600x900.jpg?disposition=attachment",
    language: "English",
    title: "Introduction to NASA Resources for Climate Change Applications",
    category: "Disasters",
    level: "Introductory",
    type: "Online",
    description:
        "This introductory webinar series will cover the fundamentals of Solar Induced Fluorescence (SIF) and LIDAR, their applications, and an overview of different satellite data",
    link:
        "https://appliedsciences.nasa.gov/join-mission/training/english/arset-use-solar-induced-fluorescence-and-lidar-assess-vegetation",
  ),
  Data(
      image: "https://oceanservice.noaa.gov/facts/ecoforecasting.jpg",
      language: "English",
      title: "Processing Satellite Imagery for Monitoring Water Quality",
      category: "Eco Forecasting",
      level: "Introductory",
      type: "Online",
      description:
          "This course provides knowledge about Remote sensing and Earth system modeling data sources relevant for river basin watershed management ",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-using-earth-observations-monitor-water-budgets-river-basin-0"),
  Data(
      image: "https://i.ytimg.com/vi/vS7r50EbFQY/maxresdefault.jpg",
      language: "English",
      title: "SAR for Landcover Applications",
      category: "Health & Air Quality",
      level: "Advanced",
      type: "In-Person",
      description:
          "This course helps you to Evaluate an air quality event in a case study, incorporating data portals, visualization tools, and satellite data",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-satellite-remote-sensing-dust-fires-smoke-and-air-quality"),
  Data(
      image:
          "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-02/FloodMM_Header_v2.jpg?h=3a51b6cd&itok=q9BIc2Rw",
      language: "English",
      title: "Satellite Remote Sensing of Flood Monitoring and Management",
      category: "Health & Air Quality",
      level: "Intermediate",
      type: "Online",
      description:
          "In this webinar, participants learn how to access and apply satellite data relevant to land indicators, such as estimating total forest area and forest change.",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-remote-sensing-land-indicators-sustainable-development-goal-15"),
  Data(
      image:
          "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-07/Website_Header_v2_2.png?h=3a51b6cd&itok=1bb_27CI",
      language: "English",
      title:
          "Satellite Observations for Analyzing Natural Hazards on Small Island Nations",
      category: "Health & Air Quality",
      level: "Advanced",
      description:
          "High resolution air quality data is helpful for monitoring urban air pollution. In this webinar, participants will learn how to use Python scripts to map and analyze air quality data",
      type: "Online",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-data-analysis-tools-high-resolution-air-quality-satellite"),
  Data(
      image:
          "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-02/SAR_Disasters_Header_v2.png?h=3a51b6cd&itok=paZpCE8v",
      language: "English",
      title: "SAR para Desastres y Aplicaciones Hidrológicas",
      category: "Health & Air Quality",
      level: "Advanced",
      description:
          "This advanced training will highlight tools useful for local fire managers. Presentations and exercises will introduce participants to tools to identify active fires, visualize fire emissions, and calculate burn severity.",
      type: "Online",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-techniques-wildfire-detection-and-monitoring"),
  Data(
      image: "https://i.ytimg.com/vi/biqoDH9VsiA/maxresdefault.jpg",
      language: "English",
      title: "SAR for Disasters and Hydrological Applications",
      category: "Health & Air Quality",
      level: "Introductory",
      description:
          "This training was given as a part of the eighth session of the United Nations Committee of Experts on Global Geospatial Information Management (UN-GGIM 8). The training aims to show the potential and current applications of Earth observations ",
      type: "In-Person",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-earth-observations-monitoring-un-sustainable-development-goals"),
  Data(
      image:
          "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2021-07/Website_Header_v2.png?h=3a51b6cd&itok=uKvY6u0M",
      language: "English",
      title: "Species Distribution Modeling with Remote Sensing",
      category: "Health & Air Quality",
      level: "Advanced",
      description:
          "Remote sensing data can help professionals manage and monitor extreme weather conditions. In this training, participants will learn how to access and analyze available NASA data",
      type: "In-Person",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-nasa-remote-sensing-flood-monitoring-and-management"),
  Data(
      image:
          "http://appliedsciences.nasa.gov/sites/default/files/styles/social_media_share/public/2022-06/UHI_Website_Header.jpg?h=e1d1bc8a&itok=S9sbXTkE",
      language: "English",
      title:
          "Satellite Remote Sensing for Measuring Urban Heat Islands and Constructing Heat Vulnerability Indices",
      category: "Health & Air Quality",
      level: "Introductory",
      type: "Online",
      description:
          "Identify NASA’s Earth Science remote sensing data products for the identification and monitoring of HABs ",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-introduction-remote-sensing-harmful-algal-blooms"),
  Data(
      image:
          "https://develop.larc.nasa.gov/2021/summer/images/2021Sum_ARC_LouisianaWater_WebsiteImage.jpg",
      language: "English",
      title: "Techniques for Wildfire Detection and Monitoring",
      category: "Water Resources",
      level: "Intermediate",
      description:
          "Wildland fires pose a serious threat to human health and property. During this in-person training, participants learned how to use NASA Earth observations to evaluate potential fire risk, monitor fire behavior in near real-time, and assess post-fire effects.",
      type: "In-Person",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-nasa-earth-science-data-wildland-fire-decision-making"),
  Data(
      image:
          "https://develop.larc.nasa.gov/2021/summer/images/2021Sum_ARC_LouisianaWater_WebsiteImage.jpg",
      language: "English",
      title: "Water Resource Management Using NASA Earth Science Data",
      category: "Water Resources",
      level: "Introductory",
      type: "Online",
      description:
          "These webinars are available for viewing at any time. They provide basic information about the fundamentals of remote sensing, and are often a prerequisite for other ARSET trainings.",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-fundamentals-remote-sensing"),
  Data(
      image:
          "https://develop.larc.nasa.gov/2021/summer/images/2021Sum_ARC_LouisianaWater_WebsiteImage.jpg",
      language: "English",
      title: "Using the UN Biodiversity Lab to Monitor the Pulse of the Planet",
      category: "Water Resources",
      level: "Advanced",
      description:
          "This course helps the users to Perform long term air quality trend analysis",
      type: "In-Person",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-satellite-remote-sensing-particulate-matter-air-quality"),
  Data(
      image:
          "https://develop.larc.nasa.gov/2021/summer/images/2021Sum_ARC_LouisianaWater_WebsiteImage.jpg",
      language: "English",
      title: "Using Google Earth Engine for Land Monitoring Applications",
      category: "Water Resources",
      level: "Advanced",
      type: "Online",
      description:
          "This webinar provides demonstrations and hands-on experience in using NASA remote sensing observations and flood mapping tools useful for flood management.",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-using-nasa-remote-sensing-flood-monitoring-and-management"),
  Data(
      image:
          "https://develop.larc.nasa.gov/2021/summer/images/2021Sum_ARC_LouisianaWater_WebsiteImage.jpg",
      language: "English",
      title: "Un Vistazo a Cómo la NASA Mide la Contaminación del Aire",
      category: "Water Resources",
      level: "Intermediate",
      type: "Online",
      description:
          " This webinar series was intended to help attendees learn about NASA soil moisture and evapotranspiration products and how to access and apply them for water resource management",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-applications-remote-sensing-soil-moisture-and"),
  Data(
      image: "https://oceanservice.noaa.gov/facts/ecoforecasting.jpg",
      language: "English",
      title: "Land Cover Classification with Satellite Imagery",
      category: "Eco Forecasting",
      level: "Introductory",
      type: "Online",
      description:
          "This training is tailored to those interested in learning how to access and visualize NASA satellite imagery.",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-inside-look-how-nasa-measures-air-pollution"),
  Data(
      image: "https://oceanservice.noaa.gov/facts/ecoforecasting.jpg",
      language: "English",
      title: "River Basin Delineation Based on NASA Digital Elevation Data",
      category: "Eco Forecasting",
      description:
          "This training is tailored to those interested in learning how to access and visualize NASA satellite imagery.",
      level: "Introductory",
      type: "Online",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/english/arset-monitoring-urban-floods-using-remote-sensing"),
  Data(
      image: "https://oceanservice.noaa.gov/facts/ecoforecasting.jpg",
      language: "English",
      title:
          "Observaciones de Satélites y Herramientas para el Riesgo, Detección y Análisis de Incendios",
      category: "Eco Forecasting",
      level: "Intermediate",
      description: "",
      type: "Online",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/spanish/arset-teledeteccion-para-escenarios-de-desastres"),
  Data(
      image: "https://oceanservice.noaa.gov/facts/ecoforecasting.jpg",
      language: "English",
      title: "NASA Remote Sensing for Flood Monitoring and Management",
      category: "Eco Forecasting",
      level: "Advanced",
      type: "Online",
      description:
          "NASA para caracterizar y monitorear desastres y apoyar actividades de asistencia. Cada sesión enfocará un desastre diferente y los datos correspondientes. Los escenarios de desastres incluirán tormentas tropicales, inundaciones, terremotos y derrumbes.",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/advanced-webinar-remote-sensing-monitoring-land-degradation-and-sustainable"),
  Data(
      image: "https://oceanservice.noaa.gov/facts/ecoforecasting.jpg",
      language: "Spanish",
      title: "MODIS to VIIRS Transition for Air Quality Applications",
      category: "Eco Forecasting",
      level: "Advanced",
      type: "Online",
      description:
          "Esta capacitación se basará en las capacidades de utilizar Google Earth Engine para el mapeo de inundaciones a partir de datos de radar enseñadas en capacitaciones ARSET de SAR anteriores",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/spanish/arset-sar-para-desastres-y-aplicaciones-hidrologicas"),
  Data(
      image:
          "https://climate.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbWNxIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--fe0dbad72f055cff8be00a2a9db6f859cabc0680/main_image.jpg",
      language: "Spanish",
      title: "An Inside Look at How NASA Measures Air Pollution",
      category: "Capacity Building",
      level: "Introductory",
      type: "Online",
      description:
          "La vegetación acuática (AV por sus siglas en inglés) sirve de hábitat para numerosas especies de invertebrados y peces pequeños. Los bosques de kelpo, por ejemplo, son el ecosistema costero dominante en aguas templadas. La presencia de AV en aguas costeras ",
      link:
          "https://appliedsciences.nasa.gov/join-mission/training/spanish/arset-monitoreo-de-la-vegetacion-acuatica-con-teledeteccion")
];

Map<String, String> topicdesc = {
  "Agriculture":
      "The Agriculture Program Area promotes the use of Earth observations to strengthen protect human livelihoods.",
  "Climate":
      "Climate is the usual weather of a place. Climate can be different for different seasons. A place might be mostly warm and dry in the summer.",
  "Disasters":
      "The Disasters program area of NASA's Earth Science Applied Sciences Program uses Earth-observing data and applied research to improve the prediction",
  "Eco Forecasting":
      " We promote the use of NASA Earth observations to monitor, analyze and forecast these changes",
  "Health & Air Quality":
      "The Health & Air Quality program area provides policymakers with Earth observations to enhance decision-making about public health, with a special focus on environmental health and infectious diseases.",
  "Water Resources":
      "The Water Resources program area helps discover, develop, and demonstrate new practical uses for NASA’s Earth observations in the water resources management community",
  "Capacity Building":
      "The Capacity Building Program provides individuals and institutions with workforce development, training activities,",
  "All":
      "For years, mapping of crop types and assessment of their characteristics has been carried out to monitor food security, inform optimal use of the landscape, and contribute to agricultural policy. ",
};


