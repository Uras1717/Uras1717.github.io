library(shiny)

content <- data.frame(id = 1:13,
  title = c("Pomona College",
    "Robert College of Istanbul",
    "Honors & Skills",
    "Personal Stock Portfolio",
    "Pomona College Formal Analysis of Interactive Media Lab",
    "P-ai at the Claremont Colleges",
    "Robert College in Space",
    "Cambridge Centre for International Research",
    "Kadir Has University",
    "Seen With Other Eyes",
    "Robert College History Club and History Magazine",
    "Robert College Model United Nations Club",
    "Robert College Artificial Intelligence Club"),
  info_and_date = c("Expected graduation May 2028",
    "Graduation June 2024",
    "Since 2005!",
    "February - December 2024",
    "Research Assistant Programmer | February 2025 - Present",
    "Software Engineer | February 2025 - Present",
    "Refounding Leader | November 2020 - June 2024",
    "Quantum Computation and Information Research Assistant | June - September 2023",
    "Teaching Assistant, Student | January - July 2023",
    "Content Creator and Volunteer Instructor | October 2020 - June 2022",
    "Editor-in-chief (2024), Author (2021, 2023, 2024) | September 2020 - June 2024",
    "4-time Chair in Various Conferences, Security Council Delegate | September 2020 - June 2024",
    "Club Member | September 2022 - June 2023"),
  descriptions_of_experiences = I(list(
    c("Bachelor of Arts, Mathematics, Computer Science; minor in Physics or Data Science (prospective)",
      "Relevant coursework: Linear Algebra, Discrete Mathematics and Functional Prog., Intro. to Data Science in R, Vector Calculus"),
    c("SAT: Maths: 800/800 Verbal: 750/800. AP Courses: Calculus BC, Physics C: Mechanics and E&M, Chemistry",
      "Yearly Projects (~10 page research papers): Time Complexity, Fluid Dynamics, Fourier Series",
      "Admitted after ranking in the top 0.11% of the nation-wide High Schools Entrance Exam"),
    c("Programming Languages: Python, R, HTML/CSS, Haskell, TypeScript, SQL, MATLAB, C++",
      "Skills: Git, NumPy, Qiskit, LaTeX, Rhino3D, PyTorch, Windsurf, RStudio, VSCode; Data Viz., Quantum Computing, Stock Market",
      "Languages: Turkish (Native), English (Fluent), German (Conversational)",
      "Honors: Bronze Medal, Middle School Mathematics, National Istanbul Science Olympiad 2019: Ranked in the top 15 of a selected national pool of ~350 students, with max. 3 students coming from any school"),
    c("Achieved %139 ROI in 10 months between February 2024 and liquidating in Nov. + Dec. 2024 - Stock Portfolio: RGTI, IONQ, QBTS, NVDA, MSTR, MSCI, IBM, AVGO, AMD, QCOM, PLTR, SOFI"),
    c("Working on and proof-testing an emulator database of 3000+ retro games through full web application mirroring with an added gameplay diagramming tool and designer’s assistant allowing for momentary snapshotting for aggregate efficiency for professional players, helping research game character and social simulation AI under the supervision of Prof. Joseph C. Osborn"),
    c("Developing a recommendation algorithm understanding group dynamics and event matching patterns for and trained on the in-development mobile app Yaaro (expected launch 2025) using research data from UMich Psychology, EventBrite and ConvoKit with sentiment analysis via a custom BERT model and group matching through constrained k-means clustering",
      "Using TailwindCSS, and ReactNative for cross-platform compatibility on the front-end and FastAPI on the back-end, with user data processing with PostgreSQL and Supabase for the launch of Yaaro"),
    c("Led the development of the first radiosonde in the world that is a fully reusable launch vehicle (RLV) with a budget of only $600",
      "Led the first high school team in Turkey to design a radiosonde capable of flight up to 32 km (20 mi) altitude for meteorological sounding able to withstand lows of -55°C (-67°F) and 4 mbar pressure",
      "Initiated all technical research from scratch with the team’s integrated flight system using cameras, sensors, LiPo batteries, a GPS, a gyroscope, the industry novel LoRa technology for communication and an Arduino Uno working with an ESP8266 microprocessor simultaneously, able to transmit data up to 50 km (31 mi) range with low bitrate",
      "Communicated with Turkish aviation authorities; arranged overseas purchases, customs clearances, sent 15000+ words of e-mail and partook in design exchange with the sole industrial producer of radiosondes in Turkey in a national defense research zone"),
    c("Conducted extensive literature review on quantum-scaling, quantum logic gates, quantum error correction, and Bell states",
      "Programmed quantum environment simulating, quantum error correction, and entanglement-assisted codes with Qiskit, NumPy; Toffoli, SWAP, Hadamard and parallel quantum logic gates, 1, 2, 3-qubit bit-flip codes, analyzing bit-, sign- flip and Shor codes",
      "Graphed outputs of experiments run through computer-simulated quantum circuits; under Dr. Sergii Strelchuk"),
    c("Completed MIT emeritus Prof. Nihat Berker’s courses Augmented Mechanics, Intro. to Quantum Mechanics simultaneously; Phase Transitions and Renormalization Group Theory, and Intro. to Computer Science, all with “Outstanding Success” ",
      "Taught a focus group of 14 students as Prof. Berker’s Teaching Assistant for Augmented Mechanics; graded 125+ exams, 70+ of the co-lengthiest pset., in total 1000+ questions providing individual feedback for all 60+ continuing students"),
    c("Prepared 27 minutes of single sensory educational lessons using only audio in both English and Turkish titled “Intro. Computer Science” on mathematical dimensions, Binary and other number systems, and logic gates for students with visual disabilities"),
    c("Oversaw the publication of the 2024 edition of the magazine (~20 authors), editing and suggesting additions on articles, fact checking, validating source and numerical integrity and accuracy, helping with digital presentation",
      "Reviewed archival accounts in Ancient Greek and Latin in order to write a ~2500 word article on the history of and the effects of population exchange on the Greco-Bactrian Kingdom as resulting from the Wars of the Diadochi"),
    c("Attended THIMUN, the most prominent European MUN conference, in the Security Council, preparing 5+ page clauses on the union of political compromises related to and the scientific, ecological development of the Great Green Wall in the Sahel",
      "Chair (2024), Deputy Chair (2023), Organizing Asst. (2022) for Robert College International MUN Historical Committee, preparing 20+ historical biographies, 30+ mock newspaper articles, and a custom-made 60x60 inch war map"),
    c("Delivered product management advice regarding real-world applicable unsupervised machine learning models as a founding member"))),
  tags = I(list(
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General", "High School"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"),
    c("Finance/Trading", "General"),
    c("Data Science/SWE", "Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "General"),
    c("General"),
    c("Finance/Trading", "General"),
    c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General"))),
  relevance_impact_or_recent = I(list(c("Impactful", "Recent"),
    c("Impactful", "Recent"),
    c("Impactful", "Recent"),
    c("Impactful", "Recent"),
    c("Impactful", "Recent"),
    c("Recent"),
    c("Impactful", "Recent"),
    c("Impactful"),
    c("Impactful"),
    c("Impactful"),
    c("Impactful"),
    c(),
    c())),
  location = c("Claremont, CA", "Istanbul, Turkey", "Turkey & United States", "Turkey & United States",
    "Claremont, CA", "Claremont, CA", "Istanbul, Turkey", "Cambridge, UK (Remote)", "Istanbul, Turkey",
    "Istanbul, Turkey", "Istanbul, Turkey", "Istanbul, Turkey", "Istanbul, Turkey"), stringsAsFactors = FALSE)

ui <- fluidPage(titlePanel("Uras Uyal"),
  
  sidebarLayout(sidebarPanel(
    checkboxGroupInput(inputId = "industry",
        label = "1. What type of role(s) are you looking for a fit?",
        choices = c("Data Science/SWE", "Mathematics/Research", "Finance/Trading", "General")),
      radioButtons(inputId = "relevance_type",
        label = "2. Interested in most impactful or most recent projects?",
        choices = c("Impactful", "Recent", "No Preference")),
      radioButtons(inputId = "robert_include",
        label = "3. Include high school educational background?",
        choices = c("Yes", "No")),
      radioButtons(inputId = "location",
        label = "4. Relevant location of experience?",
        choices = c("Claremont, CA", "Istanbul, Turkey", "Either"))),
    mainPanel(h3("Resume - Uras Uyal"), uiOutput("resume"))))

library(dplyr)
library(purrr)

server <- function(input, output, session) {
  question_outputs <- reactive({
    req(input$industry, input$relevance_type, input$robert_include, input$location)
    
    data_output <- content
    data_output <- data_output[sapply(data_output$tags, function(tags) any(outer(tags, input$industry, "=="))), ]
    
    if (input$relevance_type != "No Preference") {
      data_output <- data_output[sapply(data_output$relevance_impact_or_recent, function(relevance_f) any(relevance_f == input$relevance_type)), ]}
    if (input$robert_include == "No") {
      data_output <- data_output[sapply(data_output$tags, function(tags) all(tags != "High School")), ]}
    if (input$location == "Claremont, CA") {
      data_output <- data_output[data_output$location != "Istanbul, Turkey", ]}
    else if (input$location == "Istanbul, Turkey") {
      data_output <- data_output[data_output$location != "Claremont, CA", ]}
    data_output})
  
  output$resume <- renderUI({ui_outputs <- question_outputs()
    if (nrow(ui_outputs) == 0) {return(p("Resume is currently empty. Please try picking other answers."))}
    
    tagList(lapply(seq_len(nrow(ui_outputs)), function(i) {
        div(h4(ui_outputs$title[i]),
          p(strong(ui_outputs$info_and_date[i]), " | ", em(ui_outputs$location[i])),
          tags$ul(lapply(ui_outputs$descriptions_of_experiences[[i]], tags$li)),
          hr())}
        ))})}

shinyApp(ui, server)
