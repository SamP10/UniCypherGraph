CREATE(Greendale:University {name:"Greendale University", founded:1932,  ranking:32})

//Courses listed within the university
CREATE(Course:Course{title:"Courses", NoOFCourses:6})
CREATE(Mathematics:Course{title:"Mathematics", length:3, type:"Full-time", fee:9500, level:"Bsc", credits:240})
CREATE(English:Course{title:"English", length:3, type:"Full-time", fee:9500, level:"Bsc", credits:240})
CREATE(Computing:Course{title:"Computing", length:3, type:"Part-time", fee:9500, level:"Bsc", credits:240})
CREATE(Physics:Course{title:"Physics", length:3, type:"Part-time", fee:9500, level:"Bsc", credits:240})
CREATE(Biology:Course{title:"Biology", length:3, type:"Full-time", fee:9500, level:"Bsc", credits:240})
CREATE(Chemistry:Course{title:"Chemistry",length:3, type:"Full-time", fee:9500, level:"Bsc", credits:240})
CREATE
  (Greendale)-[:COURSES]->(Course),
  (Course)-[:COURSE]->(Mathematics),
  (Course)-[:COURSE]->(English),
  (Course)-[:COURSE]->(Computing),
  (Course)-[:COURSE]->(Physics),
  (Course)-[:COURSE]->(Biology),
  (Course)-[:COURSE]->(Chemistry)

//Years Node
CREATE(First:Year{title:"First Year", credits:0})
CREATE(Second:Year{title:"Second Year", credits:120})
CREATE(Third:Year{title:"Third Year", credits:120})
CREATE
  (Mathematics)-[:YEAR]->(First),
  (Mathematics)-[:YEAR]->(Second),
  (Mathematics)-[:YEAR]->(Third),
  (English)-[:YEAR]->(First),
  (English)-[:YEAR]->(Second),
  (English)-[:YEAR]->(Third),
  (Computing)-[:YEAR]->(First),
  (Computing)-[:YEAR]->(Second),
  (Computing)-[:YEAR]->(Third)

//Modules and relationships to their courses
//Mathematics First Year
CREATE(Decision:Math_Module{title:"Decision Mathematics"})
CREATE(Calculus:Math_Module{title:"Calculus"})
CREATE(Probability:Math_Module{title:"Probability Theory and Statistics"})
CREATE(Algebra:Math_Module{title:"Algebra"})
CREATE(LinearAlgebra:Math_Module{title:"Linear Algebra and Programming Skills"})
CREATE(GraduateDevelopment:Math_Module{title:"Graduate Development and Employability"})
CREATE
  (First)-[:MATHEMATICS_MODULE]->(Decision),
  (First)-[:MATHEMATICS_MODULE]->(Calculus),
  (First)-[:MATHEMATICS_MODULE]->(Probability),
  (First)-[:MATHEMATICS_MODULE]->(Algebra),
  (First)-[:MATHEMATICS_MODULE]->(LinearAlgebra),
  (First)-[:MATHEMATICS_MODULE]->(GraduateDevelopment)

//Mathematics Second Year
//Core Modules
CREATE(Modelling:Math_Module{title:"Mathematical Modelling and Employability Skills", credits:20})
CREATE(NumericalMethods:Math_Module{title:"Numerical Methods", credits:20})
CREATE(MultiCalc:Math_Module{title:"Multi-variable Calculus and Analytical Methods", credits:20})
//Optional Modules
CREATE(CompMath:Math_Module{title:"Computational Mathematics", credits:20})
CREATE(NumTheory:Math_Module{title:"Number Theory and Cryptography", credits:20})
CREATE(StatsFinance:Math_Module{title:"Statistics and Financial Mathematics", credits:20})
CREATE(OperationalResearch:Math_Module{title:"Operational Research", credits:20})
CREATE
  (Second)-[:MATHEMATICS_MODULE]->(Modelling),
  (Second)-[:MATHEMATICS_MODULE]->(NumericalMethods),
  (Second)-[:MATHEMATICS_MODULE]->(MultiCalc),
  (Second)-[:OPTIONAL_MATHEMATICS_MODULE]->(CompMath),
  (Second)-[:OPTIONAL_MATHEMATICS_MODULE]->(NumTheory),
  (Second)-[:OPTIONAL_MATHEMATICS_MODULE]->(StatsFinance),
  (Second)-[:OPTIONAL_MATHEMATICS_MODULE]->(OperationalResearch)

//Mathematics Third Year
//Core Modules
CREATE(MProject:Math_Module{title:"Mathematical Project", credits:60})
//Optional Modules
CREATE(Group:Math_Module{title:"Group Theory", credits:20})
CREATE(Dynamic:Math_Module{title:"Dynamical Systems and Chaos", credits:20})
CREATE(Applied:Math_Module{title:"Applied Regression and Multivariate Analysis", credits:20})
CREATE(Numeric:Math_Module{title:"Numerical Methods for Partial Differential Equations", credits:20})
CREATE(Computational:Math_Module{title:"Computational Methods in Ordinary Differential Equations", credits:20})
CREATE
  (Third)-[:MATHEMATICS_MODULE]->(MProject),
  (Third)-[:OPTIONAL_MATHEMATICS_MODULE]->(Group),
  (Third)-[:OPTIONAL_MATHEMATICS_MODULE]->(Dynamic),
  (Third)-[:OPTIONAL_MATHEMATICS_MODULE]->(Applied),
  (Third)-[:OPTIONAL_MATHEMATICS_MODULE]->(Numeric),
  (Third)-[:OPTIONAL_MATHEMATICS_MODULE]->(Computational)

//English Modules With relationship to the course
//English first year
CREATE(Narrative1:English_Module{title:"Approach To Narrative 1"})
CREATE(Narrative2:English_Module{title:"Approach To Narrative 2"})
CREATE(Poetry:English_Module{title:"Approach To Poetry"})
CREATE(Metropolis1:English_Module{title:"Metropolis 1: Reading"})
CREATE(Metropolis2:English_Module{title:"Metropolis 2: Writing"})
CREATE(Drama:English_Module{title:"Approaches to Drama"})
CREATE
  (First)-[:ENGLISH_MODULE]->(Narrative1),
  (First)-[:ENGLISH_MODULE]->(Narrative2),
  (First)-[:ENGLISH_MODULE]->(Poetry),
  (First)-[:ENGLISH_MODULE]->(Metropolis1),
  (First)-[:ENGLISH_MODULE]->(Metropolis2),
  (First)-[:ENGLISH_MODULE]->(Drama)

//English Second Year
//Core Modules
CREATE(Modernism:English_Module{title:"Modernism", credits:20})
CREATE(Century:English_Module{title:"19th Century", credits:20})
CREATE(Contemporary:English_Module{title:"Contemporary Literature and Culture", credits:20})
CREATE(Postwar:English_Module{title:"Postwar Literature and Culture", credits:20})
//Optional Modules
CREATE(Film:English_Module{title:"Film Modes and Genres", credits:20})
CREATE(Romanticism:English_Module{title:"Romanticism", credits:20})
CREATE(Colonial:English_Module{title:"Postcolonial Literature and Culture", credits:20})
CREATE(Creative:English_Module{title:"Creative Writing Workshop", credits:20})
CREATE
  (Second)-[:ENGLISH_MODULE]->(Modernism),
  (Second)-[:ENGLISH_MODULE]->(Century),
  (Second)-[:ENGLISH_MODULE]->(Contemporary),
  (Second)-[:ENGLISH_MODULE]->(Postwar),
  (Second)-[:OPTIONAL_ENGLISH_MODULE]->(Film),
  (Second)-[:OPTIONAL_ENGLISH_MODULE]->(Romanticism),
  (Second)-[:OPTIONAL_ENGLISH_MODULE]->(Colonial),
  (Second)-[:OPTIONAL_ENGLISH_MODULE]->(Creative)

//English Third Year
//Core Modules
CREATE(EProject:English_Module{title:"Critical Project", credits:60})
//Optional Modules
CREATE(ReadingP:English_Module{title:"Reading Contemporary Poetry", credits:20})
CREATE(ReadingR:English_Module{title:"Reading Romantic Fiction", credits:20})
CREATE(Shakespeare:English_Module{title:"Shakespeare and the Tragic", credits:20})
CREATE(Gothic:English_Module{title:"Gothic on Screen", credits:20})
CREATE(Scriptwriting:English_Module{title:"Scriptwriting", credits:20})
CREATE(Games:English_Module{title:"Writing Games", credits:20})
CREATE
  (Third)-[:ENGLISH_MODULE]->(EProject),
  (Third)-[:OPTIONAL_ENGLISH_MODULE]->(ReadingP),
  (Third)-[:OPTIONAL_ENGLISH_MODULE]->(ReadingR),
  (Third)-[:OPTIONAL_ENGLISH_MODULE]->(Shakespeare),
  (Third)-[:OPTIONAL_ENGLISH_MODULE]->(Gothic),
  (Third)-[:OPTIONAL_ENGLISH_MODULE]->(Scriptwriting),
  (Third)-[:OPTIONAL_ENGLISH_MODULE]->(Games)

//Computing Modules with relationship to course
//First Year Modules
CREATE(CTProject:Computing_Module{title:"Team Project"})
CREATE(Programming:Computing_Module{title:"Programming"})
CREATE(CompArchitecture:Computing_Module{title:"Computer Architecture"})
CREATE(MathComp:Computing_Module{title:"Mathematics for Computing"})
CREATE(Databases:Computing_Module{title:"Databases"})
CREATE(WebDev:Computing_Module{title:"Web Development"})
CREATE
  (First)-[:COMPUTING_MODULE]->(CTProject),
  (First)-[:COMPUTING_MODULE]->(Programming),
  (First)-[:COMPUTING_MODULE]->(CompArchitecture),
  (First)-[:COMPUTING_MODULE]->(MathComp),
  (First)-[:COMPUTING_MODULE]->(Databases),
  (First)-[:COMPUTING_MODULE]->(WebDev)

//Second Year Modules
CREATE(Networks:Computing_Module{title:"Networks", credits:20})
CREATE(Industry:Computing_Module{title:"Industry and Community Engagement", credits:20})
CREATE(Software:Computing_Module{title:"Software Development Processes", credits:20})
CREATE(DatabaseModels:Computing_Module{title:"Database Models and Implementation", credits:20})
CREATE(ProjMan:Computing_Module{title:"IT Project Management", credits:20})
CREATE(Thematic:Computing_Module{title:"Thematic Project", credits:20})
CREATE
  (Second)-[:COMPUTING_MODULE]->(Networks),
  (Second)-[:COMPUTING_MODULE]->(Industry),
  (Second)-[:COMPUTING_MODULE]->(Software),
  (Second)-[:COMPUTING_MODULE]->(DatabaseModels),
  (Second)-[:COMPUTING_MODULE]->(ProjMan),
  (Second)-[:COMPUTING_MODULE]->(Thematic)

//Third Year Modules
//Core Modules
CREATE(Synoptic:Computing_Module{title:"Synoptic Project", credits:20})
CREATE(Research:Computing_Module{title:"Research Methods", credits:20})
CREATE(DataGov:Computing_Module{title:"Data Governance and Management", credits:20})
CREATE(SystemsOp:Computing_Module{title:"IT Systems Operation and Administration", credits:20})
CREATE(DatabaseArch:Computing_Module{title:"Database Architecture and Performance", credits:20})
//Optional
CREATE(ProbSolving:Computing_Module{title:"Rapis Applied Problem Solving", credits:20})
CREATE(Mobile:Computing_Module{title:"Mobile Computing", credits:20})
CREATE(UserExp:Computing_Module{title:"User Experience and Interaction Design", credits:20})
CREATE
  (Third)-[:COMPUTING_MODULE]->(Synoptic),
  (Third)-[:COMPUTING_MODULE]->(Research),
  (Third)-[:COMPUTING_MODULE]->(DataGov),
  (Third)-[:COMPUTING_MODULE]->(SystemsOp),
  (Third)-[:COMPUTING_MODULE]->(DatabaseArch),
  (Third)-[:OPTIONAL_COMPUTING_MODULE]->(ProbSolving),
  (Third)-[:OPTIONAL_COMPUTING_MODULE]->(Mobile),
  (Third)-[:OPTIONAL_COMPUTING_MODULE]->(UserExp)

//Staff Data and relationships to specific courses and taught modules and inter staff relationships
//Staff Node
CREATE(Staff:Staff{title:"STAFF", noOfMembers:120})
CREATE
  (Greendale)-[:EMPLOYEES]->(Staff)

//Principle and hierarchy
CREATE(Principal:Staff{title:"Principal", role:"University head and overseer", name:"Prof Amanda Hollowson"})
CREATE(VicePrincipal1:Staff{title:"Vice-Principal", role:"Assist the role and responsibilities of the principal in matters of the university", name:"Jason Reach"})
CREATE(VicePrincipal2:Staff{title:"Vice-Principal", role:"Assist the role and responsibilities of the principal in matters of the university", name:"Prof Mark Leason"})
CREATE
  (Staff)-[:PRINCIPAL]->(Principal),
  (Principal)-[:VICE_PRINCIPAL]->(VicePrincipal1),
  (Principal)-[:VICE_PRINCIPAL]->(VicePrincipal2)


//Course Directors
CREATE(MathCourseDirector:Staff{title:"Mathematics course director", role:"Oversee all aspects of given course", name:"Lee Harnson"})
CREATE(EngCourseDirector:Staff{title:"English course director", role:"Oversee all aspects of given course", name:"Elisa Feraunti"})
CREATE(CompCourseDirector:Staff{title:"Computing course director", role:"Oversee all aspects of given course", name:"Louisa Mendes"})
CREATE(PhyCourseDirector:Staff{title:"Physics course director", role:"Oversee all aspects of given course", name:"Dr David Bellamy"})
CREATE(BioCourseDirector:Staff{title:"Biology course director", role:"Oversee all aspects of given course", name:"Prof Archie Anderson"})
CREATE(ChemCourseDirector:Staff{title:"Chemistry course director", role:"Oversee all aspects of given course", name:"Prof Ian Miltonson"})
CREATE(CourseDirectors:Staff{title:"Course Directors", noOFDirectors:6})
CREATE
  (Staff)-[:DIRECTORS]->(CourseDirectors),
  (CourseDirectors)-[:MATHEMATICS_DIR]->(MathCourseDirector),
  (CourseDirectors)-[:ENGLISH_DIR]->(EngCourseDirector),
  (CourseDirectors)-[:COMPUTING_DIR]->(CompCourseDirector),
  (CourseDirectors)-[:PHYSICS_DIR]->(PhyCourseDirector),
  (CourseDirectors)-[:BIOLOGY_DIR]->(BioCourseDirector),
  (CourseDirectors)-[:CHEMISTRY_DIR]->(ChemCourseDirector),
  (MathCourseDirector)-[:DIRECTS]->(Mathematics),
  (EngCourseDirector)-[:DIRECTS]->(English),
  (CompCourseDirector)-[:DIRECTS]->(Computing),
  (PhyCourseDirector)-[:DIRECTS]->(Physics),
  (BioCourseDirector)-[:DIRECTS]->(Biology),
  (ChemCourseDirector)-[:DIRECTS]->(Chemistry)

//Module Leads
CREATE(ModuleLeaders:Staff{title:"Module Leaders"})
CREATE(MathModuleLead1:Staff{title:"Mathematics Module Lead", role:"", name:"Jessica Allen"})
CREATE(MathModuleLead2:Staff{title:"Mathematics Module Lead", role:"", name:"Stephen Rellic"})
CREATE(MathModuleLead3:Staff{title:"Mathematics Module Lead", role:"", name:"LLoyd Stone"})
CREATE(EngModuleLead1:Staff{title:"English Module Lead", role:"", name:"Prof James Monson"})
CREATE(EngModuleLead2:Staff{title:"English Module Lead", role:"", name:"Leah Gratenchi"})
CREATE(EngModuleLead3:Staff{title:"English Module Lead", role:"", name:"Veronica Vanzuela"})
CREATE(CompModuleLead1:Staff{title:"Computing Module Lead", role:"", name:"Leon Milston"})
CREATE(CompModuleLead2:Staff{title:"Computing Module Lead", role:"", name:"Ian Jerrison"})
CREATE(CompModuleLead3:Staff{title:"Computing Module Lead", role:"", name:"Dr Alex Tamsen"})
CREATE(MathModuleLead:Staff{title:"Math Module Lead"})
CREATE(EngModuleLead:Staff{title:"English Module Lead"})
CREATE(CompModuleLead:Staff{title:"Computing Module Lead"})
CREATE
  (Staff)-[:MODULE_LEADERS]->(ModuleLeaders),
  (ModuleLeaders)-[:MODULE_LEAD]->(MathModuleLead),
  (ModuleLeaders)-[:MODULE_LEAD]->(EngModuleLead),
  (ModuleLeaders)-[:MODULE_LEAD]->(CompModuleLead),
  (MathModuleLead)-[:MODULE_LEAD]->(MathModuleLead1),
  (MathModuleLead)-[:MODULE_LEAD]->(MathModuleLead2),
  (MathModuleLead)-[:MODULE_LEAD]->(MathModuleLead3),
  (EngModuleLead)-[:MODULE_LEAD]->(EngModuleLead1),
  (EngModuleLead)-[:MODULE_LEAD]->(EngModuleLead2),
  (EngModuleLead)-[:MODULE_LEAD]->(EngModuleLead3),
  (CompModuleLead)-[:MODULE_LEAD]->(CompModuleLead1),
  (CompModuleLead)-[:MODULE_LEAD]->(CompModuleLead2),
  (CompModuleLead)-[:MODULE_LEAD]->(CompModuleLead3),
  (MathModuleLead1)-[:REPORTS_TO]->(MathCourseDirector),
  (MathModuleLead2)-[:REPORTS_TO]->(MathCourseDirector),
  (MathModuleLead3)-[:REPORTS_TO]->(MathCourseDirector),
  (MathCourseDirector)-[:MANAGES]->(MathModuleLead1),
  (MathCourseDirector)-[:MANAGES]->(MathModuleLead2),
  (MathCourseDirector)-[:MANAGES]->(MathModuleLead3),
  (EngModuleLead1)-[:REPORTS_TO]->(EngCourseDirector),
  (EngModuleLead2)-[:REPORTS_TO]->(EngCourseDirector),
  (EngModuleLead3)-[:REPORTS_TO]->(EngCourseDirector),
  (EngCourseDirector)-[:MANAGES]->(EngModuleLead1),
  (EngCourseDirector)-[:MANAGES]->(EngModuleLead2),
  (EngCourseDirector)-[:MANAGES]->(EngModuleLead3),
  (CompModuleLead1)-[:REPORTS_TO]->(CompCourseDirector),
  (CompModuleLead2)-[:REPORTS_TO]->(CompCourseDirector),
  (CompModuleLead3)-[:REPORTS_TO]->(CompCourseDirector),
  (CompCourseDirector)-[:MANAGES]->(CompModuleLead1),
  (CompCourseDirector)-[:MANAGES]->(CompModuleLead2),
  (CompCourseDirector)-[:MANAGES]->(CompModuleLead3),
//Relationship to modules
//Math
//Year 1
  (MathModuleLead1)-[:TEACHES]->(Calculus),
  (MathModuleLead1)-[:TEACHES]->(Algebra),
  (MathModuleLead2)-[:TEACHES]->(Decision),
  (MathModuleLead2)-[:TEACHES]->(GraduateDevelopment),
  (MathModuleLead3)-[:TEACHES]->(Probability),
  (MathModuleLead3)-[:TEACHES]->(LinearAlgebra),
//Year 2
  (MathModuleLead1)-[:TEACHES]->(MultiCalc),
  (MathModuleLead1)-[:TEACHES]->(NumericalMethods),
  (MathModuleLead2)-[:TEACHES]->(CompMath),
  (MathModuleLead2)-[:TEACHES]->(StatsFinance),
  (MathModuleLead2)-[:TEACHES]->(NumTheory),
  (MathModuleLead3)-[:TEACHES]->(Modelling),
  (MathModuleLead3)-[:TEACHES]->(OperationalResearch),
//Year 3
  (MathModuleLead1)-[:TEACHES]->(Numeric),
  (MathModuleLead1)-[:TEACHES]->(Applied),
  (MathModuleLead2)-[:TEACHES]->(Group),
  (MathModuleLead2)-[:TEACHES]->(Computational),
  (MathModuleLead3)-[:TEACHES]->(MProject),
  (MathModuleLead3)-[:TEACHES]->(Dynamic),
//English
//Year 1
  (EngModuleLead1)-[:TEACHES]->(Narrative1),
  (EngModuleLead1)-[:TEACHES]->(Narrative2),
  (EngModuleLead2)-[:TEACHES]->(Metropolis1),
  (EngModuleLead2)-[:TEACHES]->(Metropolis2),
  (EngModuleLead3)-[:TEACHES]->(Poetry),
  (EngModuleLead3)-[:TEACHES]->(Drama),
//Year 2
  (EngModuleLead1)-[:TEACHES]->(Modernism),
  (EngModuleLead1)-[:TEACHES]->(Postwar),
  (EngModuleLead2)-[:TEACHES]->(Contemporary),
  (EngModuleLead2)-[:TEACHES]->(Century),
  (EngModuleLead2)-[:TEACHES]->(Colonial),
  (EngModuleLead3)-[:TEACHES]->(Creative),
  (EngModuleLead3)-[:TEACHES]->(Film),
  (EngModuleLead3)-[:TEACHES]->(Romanticism),
//Year 3
  (EngModuleLead1)-[:TEACHES]->(EProject),
  (EngModuleLead1)-[:TEACHES]->(Games),
  (EngModuleLead2)-[:TEACHES]->(ReadingP),
  (EngModuleLead2)-[:TEACHES]->(ReadingR),
  (EngModuleLead3)-[:TEACHES]->(Gothic),
  (EngModuleLead3)-[:TEACHES]->(Scriptwriting),
  (EngModuleLead3)-[:TEACHES]->(Shakespeare),
//Computing
//Year 1
  (CompModuleLead1)-[:TEACHES]->(CTProject),
  (CompModuleLead1)-[:TEACHES]->(CompArchitecture),
  (CompModuleLead2)-[:TEACHES]->(WebDev),
  (CompModuleLead2)-[:TEACHES]->(Databases),
  (CompModuleLead3)-[:TEACHES]->(MathComp),
  (CompModuleLead3)-[:TEACHES]->(Programming),
//Year 2
  (CompModuleLead1)-[:TEACHES]->(Networks),
  (CompModuleLead1)-[:TEACHES]->(Thematic),
  (CompModuleLead2)-[:TEACHES]->(ProjMan),
  (CompModuleLead2)-[:TEACHES]->(Industry),
  (CompModuleLead3)-[:TEACHES]->(Software),
  (CompModuleLead3)-[:TEACHES]->(DatabaseModels),
//Year 3
  (CompModuleLead1)-[:TEACHES]->(Synoptic),
  (CompModuleLead1)-[:TEACHES]->(DataGov),
  (CompModuleLead1)-[:TEACHES]->(Mobile),
  (CompModuleLead2)-[:TEACHES]->(UserExp),
  (CompModuleLead2)-[:TEACHES]->(DatabaseArch),
  (CompModuleLead3)-[:TEACHES]->(Research),
  (CompModuleLead3)-[:TEACHES]->(SystemsOp),
  (CompModuleLead3)-[:TEACHES]->(ProbSolving)
/*
Future development
CREATE(ModuleLead:Staff{title:"Physics Module Lead", role:"", name:""})
CREATE(ModuleLead:Staff{title:"Chemistry Module Lead", role:"", name:""})
CREATE(ModuleLead:Staff{title:"Biology Module Lead", role:"", name:""})
*/
//Course Faculty Members
CREATE(Faculty:Staff{title:"Faculty", noOfFaculty:14})
CREATE(MFaculty:Staff{title:"Math Faculty"})
CREATE(EFaculty:Staff{title:"English Faculty"})
CREATE(CFaculty:Staff{title:"Computing Faculty"})
CREATE(MathFacultyMember1:Staff{title:"Mathematics faculty member", role:"", name:"Jade Zeref"})
CREATE(MathFacultyMember2:Staff{title:"Mathematics faculty member", role:"", name:"Jones Freda"})
CREATE(MathFacultyMember3:Staff{title:"Mathematics faculty member", role:"", name:"Alex Saxon"})
CREATE(MathFacultyMember4:Staff{title:"Mathematics faculty member", role:"", name:"Phillip Higgs"})
CREATE(EngFacultyMember1:Staff{title:"English faculty member", role:"", name:"Milo Plant"})
CREATE(EngFacultyMember2:Staff{title:"English faculty member", role:"", name:"Richard Sheeran"})
CREATE(EngFacultyMember3:Staff{title:"English faculty member", role:"", name:"Brittany Checkyavik"})
CREATE(EngFacultyMember4:Staff{title:"English faculty member", role:"", name:"Sharna Blackley"})
CREATE(CompFacultyMember1:Staff{title:"Computing faculty member", role:"", name:"Veronica Studholme"})
CREATE(CompFacultyMember2:Staff{title:"Computing faculty member", role:"", name:"Rebecca Davies"})
CREATE(CompFacultyMember3:Staff{title:"Computing faculty member", role:"", name:"Adam Sterling"})
CREATE(CompFacultyMember4:Staff{title:"Computing faculty member", role:"", name:"Allan Richardson
"})
CREATE
//Relationship for faculty members and module leaders
  (Staff)-[:FACULTY]->(Faculty),
  (Faculty)-[:MATH_FACULTY]->(MFaculty),
  (Faculty)-[:ENGLISH_FACULTY]->(EFaculty),
  (Faculty)-[:COMPUTING_FACULTY]->(CFaculty),
  (MFaculty)-[:FACULTY_MEMBER]->(MathFacultyMember1),
  (MFaculty)-[:FACULTY_MEMBER]->(MathFacultyMember2),
  (MFaculty)-[:FACULTY_MEMBER]->(MathFacultyMember3),
  (MFaculty)-[:FACULTY_MEMBER]->(MathFacultyMember4),
  (EFaculty)-[:FACULTY_MEMBER]->(EngFacultyMember1),
  (EFaculty)-[:FACULTY_MEMBER]->(EngFacultyMember2),
  (EFaculty)-[:FACULTY_MEMBER]->(EngFacultyMember3),
  (EFaculty)-[:FACULTY_MEMBER]->(EngFacultyMember4),
  (CFaculty)-[:FACULTY_MEMBER]->(CompFacultyMember1),
  (CFaculty)-[:FACULTY_MEMBER]->(CompFacultyMember2),
  (CFaculty)-[:FACULTY_MEMBER]->(CompFacultyMember3),
  (CFaculty)-[:FACULTY_MEMBER]->(CompFacultyMember4),
  (MathFacultyMember1)-[:REPORTS_TO]->(MathModuleLead1),
  (MathFacultyMember2)-[:REPORTS_TO]->(MathModuleLead2),
  (MathFacultyMember3)-[:REPORTS_TO]->(MathModuleLead1),
  (MathFacultyMember4)-[:REPORTS_TO]->(MathModuleLead3),
  (EngFacultyMember1)-[:REPORTS_TO]->(EngModuleLead1),
  (EngFacultyMember2)-[:REPORTS_TO]->(EngModuleLead2),
  (EngFacultyMember3)-[:REPORTS_TO]->(EngModuleLead2),
  (EngFacultyMember4)-[:REPORTS_TO]->(EngModuleLead3),
  (CompFacultyMember1)-[:REPORTS_TO]->(CompModuleLead1),
  (CompFacultyMember2)-[:REPORTS_TO]->(CompModuleLead2),
  (CompFacultyMember3)-[:REPORTS_TO]->(CompModuleLead3),
  (CompFacultyMember4)-[:REPORTS_TO]->(CompModuleLead3)

//Administration Staff
CREATE(Administration:Staff{title:"Administration", role:"Deal with internal systems and information"})
CREATE (Staff)-[:ADMINISTRATION]->(Administration)
//Reception
CREATE(Reception:Staff{title:"Reception", role:"Handle student information and internal communication"})
CREATE(Receptionist1:Staff{title:"Receptionist", name:"Daisy Harrison"})
CREATE(Receptionist2:Staff{title:"Receptionist", name:"Monica Trinity"})
CREATE(Receptionist3:Staff{title:"Receptionist", name:"Radley Stalk"})
CREATE
  (Administration)-[:Reception]->(Reception),
  (Reception)-[:Receptionist]->(Receptionist1),
  (Reception)-[:Receptionist]->(Receptionist2),
  (Reception)-[:Receptionist]->(Receptionist3)

//IT
CREATE(IT:Staff{title:"IT", role:"Help internally with IT problems for staff and students"})
CREATE(ITEngineer1:Staff{title:"IT Engineer", name:"Wronika Dailey"})
CREATE(ITEngineer2:Staff{title:"IT Engineer", name:"Jerry Springer"})
CREATE
  (Administration)-[:IT_DESK]->(IT),
  (IT)-[:ENGINEER]->(ITEngineer1),
  (IT)-[:ENGINEER]->(ITEngineer2)

//Admissions
CREATE(Admissions:Staff{title:"Admissions", role:"Handle applications for degrees and vacancies"})
CREATE(AdminStaff1:Staff{title:"Admissions Officer", name:"Helena Goodard"})
CREATE(AdminStaff2:Staff{title:"Admissions Officer", name:"Karen Hillier"})
CREATE(AdminStaff3:Staff{title:"Admissions Officer", name:"Kevin Stead"})
CREATE
  (Administration)-[:ADMISSIONS]->(Admissions),
  (Admissions)-[:OFFICER]->(AdminStaff1),
  (Admissions)-[:OFFICER]->(AdminStaff2),
  (Admissions)-[:OFFICER]->(AdminStaff3)

CREATE(Recruitment:Staff{title:"Recruitment", role:"Advertise and employ lower levels of the university"})
CREATE(RecruitmentOfficer1:Staff{title:"Recruitment Officer", name:"Kate Ackrington"})
CREATE(RecruitmentOfficer2:Staff{title:"Recruitment Officer", name:"Romeo Bennette"})
CREATE(RecruitmentOfficer3:Staff{title:"Recruitment Officer", name:"Freya Wilde"})
CREATE
  (Administration)-[:RECRUITMENT]->(Recruitment),
  (Recruitment)-[:RECRUITMENT_OFFICER]->(RecruitmentOfficer1),
  (Recruitment)-[:RECRUITMENT_OFFICER]->(RecruitmentOfficer2),
  (Recruitment)-[:RECRUITMENT_OFFICER]->(RecruitmentOfficer3)

//Information Graph - Security related who is responsible for what kind of information
CREATE(Information:Information{title:"Information"})
CREATE(StaffInformation:Information{title:"Staff Information"})
CREATE(StudentInformation:Information{title:"Student Information"})
CREATE(Web:Information{title:"Web Information"})
CREATE(StudentApplication:Information{title:"Student Applications"})
CREATE(StudentEnrollment:Information{title:"Enrollment"})
CREATE(BudgetReport:Information{title:"Budget Report"})
CREATE(Attendance:Information{title:"Attendance Register and report"})
CREATE(Attainment:Information{title:"Student Attainment"})
CREATE(Assessment:Information{title:"Assessment/Assignment"})
CREATE(Submission:Information{title:"Submission"})
CREATE(Moderation:Information{title:"Moderation"})
CREATE(Finance:Information{title:"Finance and Funding Report"})
CREATE(FeedbackGrading:Information{title:"Feedback and Grading"})
CREATE(StudentSupport:Information{title:"Student support"})
CREATE(Timetable:Information{title:"Timetables"})
CREATE(RiskAssessment:Information{title:"Risk Assessment"})
CREATE(Survey:Information{title:"Module Surveys"})
CREATE(Progression:Information{title:"Progression Opportunity"})
CREATE(Payroll:Information{title:"Staff Payroll"})
CREATE(Mitigation:Information{title:"Mitigation Application"})
CREATE(SemesterReport:Information{title:"Semester Report"})
CREATE(StuFinance:Information{title:"Student Finance"})
CREATE
  (Information)-[:STUDENT]->(StudentInformation),
  (Information)-[:STAFF]->(StaffInformation),
  (StudentInformation)-[:STUDENT_APPLICATION]->(StudentApplication),
  (StudentApplication)-[:APPROVED]->(StudentEnrollment),
  (StaffInformation)-[:PAID]->(Payroll),
  (StaffInformation)-[:GENERATE]->(BudgetReport),
  (StaffInformation)-[:GENERATE]->(RiskAssessment),
  (StaffInformation)-[:GENERATE]->(Survey),
  (StaffInformation)-[:GENERATE]->(SemesterReport),
  (StaffInformation)-[:GENERATE]->(Timetable),
  (StaffInformation)-[:GENERATE]->(Finance),
  (StaffInformation)-[:ASSESS]->(Assessment),
  (StaffInformation)-[:ASSESS]->(Moderation),
  (StaffInformation)-[:MONITOR]->(Attainment),
  (StaffInformation)-[:MONITOR]->(Attendance),
  (StaffInformation)-[:MAINTAIN]->(Web),
  (StaffInformation)-[:RETURN]->(FeedbackGrading),
  (StudentEnrollment)-[:CAN_APPLY]->(StudentSupport),
  (StudentEnrollment)-[:CAN_APPLY]->(Mitigation),
  (StudentEnrollment)-[:CAN_APPLY]->(StuFinance),
  (StudentEnrollment)-[:SUBMIT]->(Assessment),
  (StudentEnrollment)-[:SUBMIT]->(Survey),
  (StudentEnrollment)-[:VIEW]->(Timetable),
  (StudentEnrollment)-[:SUBMIT]->(Submission),
  (StudentEnrollment)-[:CAN_APPLY]->(Progression)

//Responsibilities of the above associated with the person
CREATE(Job:Job{title:"Job Roles"})
CREATE(CourseDirectorRole:Job{title:"Course Director Role"})
CREATE(ModuleLeadRole:Job{title:"Module Lead Role"})
CREATE(FacultyMemberRole:Job{title:"Faculty Member Role"})
CREATE(ITDeskRole:Job{title:"IT Desk Role"})
CREATE(AdminRecept:Job{title:"Admissions and Reception Roles"})
CREATE
  (Principal)-[:RESPONSIBLE_FOR]->(StaffInformation),
  (StaffInformation)-[:VACANCIES]->(Job),
  (Job)-[:DIRECTORS]->(CourseDirectorRole),
  (Job)-[:LEADS]->(ModuleLeadRole),
  (Job)-[:FACULTY]->(FacultyMemberRole),
  (Job)-[:IT]->(ITDeskRole),
  (Job)-[:ADMIN_RECEPTION]->(AdminRecept),
  (Recruitment)-[:RECRUIT_FOR]->(Job),
  (Principal)-[:INTERVIEWS]->(CourseDirectorRole),
  (VicePrincipal1)-[:INTERVIEWS]->(CourseDirectorRole),
  (VicePrincipal2)-[:INTERVIEWS]->(CourseDirectorRole),
  (VicePrincipal1)-[:INTERVIEWS]->(ModuleLeadRole),
  (VicePrincipal2)-[:INTERVIEWS]->(ModuleLeadRole),
  (CourseDirectors)-[:INTERVIEWS]->(ModuleLeadRole),
  (CourseDirectors)-[:INTERVIEWS]->(FacultyMemberRole),
  (ModuleLeaders)-[:INTERVIEWS]->(FacultyMemberRole),
  (CompCourseDirector)-[:INTERVIEWS]->(ITDeskRole),
  (CompModuleLead1)-[:INTERVIEWS]->(ITDeskRole),
  (Recruitment)-[:INTERVIEWS]->(AdminRecept),
  (Admissions)-[:REVIEW]->(StudentApplication),
  (Admissions)-[:CONFIRM]->(StudentEnrollment),
  (Payroll)-[:PAY]->(Staff),
  (Principal)-[:OVERSEE]->(Payroll),
  (Principal)-[:CONDUCT]->(RiskAssessment),
  (VicePrincipal1)-[:CONDUCT]->(RiskAssessment),
  (VicePrincipal2)-[:CONDUCT]->(RiskAssessment),
  (CourseDirectors)-[:GENERATE]->(BudgetReport),
  (Principal)-[:MODERATE]->(BudgetReport),
  (ModuleLeaders)-[:CREATE]->(Survey),
  (Attendance)-[:DATA]->(SemesterReport),
  (Attainment)-[:DATA]->(SemesterReport),
  (CourseDirectors)-[:PRODUCE]->(SemesterReport),
  (Faculty)-[:GENERATE]->(Timetable),
  (Reception)-[:GENERATE]->(Timetable),
  (Principal)-[:GENERATE]->(Finance),
  (Finance)-[:DISTRIBUTED]->(CourseDirectors),
  (CourseDirectors)-[:GENERATE]->(Assessment),
  (ModuleLeaders)-[:GENERATE]->(Assessment),
  (ModuleLeaders)-[:GENERATE]->(Attainment),
  (CourseDirectors)-[:REVIEW]->(Attainment),
  (Faculty)-[:REPORT]->(Attendance),
  (ModuleLeaders)-[:REVIEW]->(Attendance),
  (Submission)-[:COMPLETED]->(FeedbackGrading),
  (ModuleLeaders)-[:FEEDBACK]->(FeedbackGrading),
  (Submission)-[:MARKED]->(ModuleLeaders),
  (CourseDirectors)-[:PROVIDE]->(Progression)

//Website Graph
CREATE(GreendaleWebsite:Website{title:"Website"})
CREATE(WebsiteFront:Website{title:"Website Front End Pages"})
CREATE(WebsiteBackend:Website{title:"Website Back End"})
//Front End
CREATE(InfoPage:Website{title:"Information webpage"})
CREATE(Contact:Website{title:"Contact webpage"})
CREATE(Courses:Website{title:"Course webpage"})
CREATE(MathCourse:Website{title:"Math course page"})
CREATE(EngCourse:Website{title:"English Course page"})
CREATE(CompCourse:Website{title:"Computing Course page"})
CREATE(Application:Website{title:"Application Webpage"})
//Back End
CREATE(Authentication:Website{title:"Login Page"})
CREATE(StaffLogin:Website{title:"Staff admin pages"})
CREATE(ITLogin:Website{title:"IT Login Pages"})
CREATE(StudentLogin:Website{title:"Student Login Pages"})
CREATE(StudentProfile:Website{title:"Student Profile"})
CREATE(StaffProfile:Website{title:"Staff Profile"})
CREATE(CoursePage:Website{title:"Course Page"})
CREATE(ModulePages:Website{title:"Modules Pages"})
CREATE(Library:Website{title:"Library"})
CREATE(Support:Website{title:"Student Support"})
CREATE(TimetablePage:Website{title:"Timetable"})
//Backend Staff
CREATE(StudentRecord:Website{title:"Student Records Forms"})
CREATE(ModuleUploadPage:Website{title:"Module Resource Upload Page"})
CREATE(AssessmentFeedbackPage:Website{title:"Assessment and Feedback"})
CREATE(EmailInternal:Website{title:"Email"})
CREATE(AdminPages:Website{title:"IT Admin Pages"})
//Relationship
CREATE
  (Greendale)-[:WEBSITE]->(GreendaleWebsite),
  (GreendaleWebsite)-[:FRONTEND]->(WebsiteFront),
  (GreendaleWebsite)-[:BACKEND]->(WebsiteBackend),
  (WebsiteFront)-[:INDEX_PAGE]->(InfoPage),
  (WebsiteFront)-[:CONTACT_PAGE]->(Contact),
  (WebsiteFront)-[:COURSE_PAGES]->(Courses),
  (WebsiteFront)-[:APPLICATION_PAGE]->(Application),
  (Courses)-[:MATHS_PAGE]->(MathCourse),
  (Courses)-[:ENGLISH_PAGE]->(EngCourse),
  (Courses)-[:COMPUTING_PAGE]->(CompCourse),
  (WebsiteBackend)-[:AUTHENTICATION]->(Authentication),
  (Authentication)-[:STAFF]->(StaffLogin),
  (Authentication)-[:STUDENT]->(StudentLogin),
  (Authentication)-[:IT]->(ITLogin),
  (StudentLogin)-[:PROFILE]->(StaffProfile),
  (StaffLogin)-[:RECORDS]->(StudentRecord),
  (StaffLogin)-[:MODULE_RESOURCES]->(ModuleUploadPage),
  (StaffLogin)-[:ASSESSMENT_FEEDBACK]->(AssessmentFeedbackPage),
  (StaffLogin)-[:EMAIL]->(EmailInternal),
  (StudentLogin)-[:PROFILE]->(StudentProfile),
  (StudentLogin)-[:COURSE]->(CoursePage),
  (CoursePage)-[:MODULES]->(ModulePages),
  (StudentLogin)-[:TIMETABLE]->(TimetablePage),
  (StudentLogin)-[:LIBRARY]->(Library),
  (StudentLogin)-[:SUPPORT]->(Support)

CREATE(Security:Security{title:"Security"})
CREATE(MitM:Security{title:"Man in the middle", description:"Man in the middle attacks are when someone on the network a takes an action on another user's behalf inheriting their privilege. This could a CSRF attack or sniffing packets on a network that is unencrypted. Either way the original connection is controlled and redirected by a malicious user on that network."})
CREATE(Insider:Security{title:"Malicious Insider", description:"A malicious insider is a internal employee who takes a malicious action to the infrastructure directly, this can range from embezzlement to damaging the infrastructure through direct destruction of property or services on a system."})
CREATE(Phishing:Security{title:"Phishing Scams", description:"A phishing scam is where random emails which a impersonating someone of internal or external source, such as an employee or a weekly bulletin. Normally they consist of a CSRF attack attempting to get hold of a user's session or credentials to disrupt a business."})
CREATE(DDOS:Security{title:"Dedicated Denial Of Service", description:"A DDOS attack is where a computer or a network of computers send messages to the server or systems to bring the server down for often extended periods of time, most are used as ransomware to get money to bring the server backup."})
CREATE(Malware:Security{title:"Malware", description:"Malware comes in different forms from rootkits which allow attackers to a variety of tools with keytracers and screen recorders or a virus such a worm which connections and spreads its malicious code once gaining access. Normally their through malicious downloads or a malicious URL from a phishing email or text."})
CREATE
  (Security)-[:RISK]->(MitM),
  (Security)-[:RISK]->(Insider),
  (Security)-[:RISK]->(Phishing),
  (Security)-[:RISK]->(DDOS),
  (Security)-[:RISK]->(Malware),
  (MitM)-[:RISK]->(Staff),
  (MitM)-[:RISK]->(Web),
  (Insider)-[:RISK]->(Staff),
  (Insider)-[:RISK]->(IT),
  (Phishing)-[:RISK]->(Staff),
  (DDOS)-[:RISK]->(Web),
  (Malware)-[:RISK]->(Staff)

CREATE(SMitigation:Mitigation{title:"Mitigation", description:"These are mitigation techniques which can be deployed to minimise the risks to the security of the business."})
CREATE(ACL:Mitigation{title:"Access Control Lists", description:"This is user controls of giving permssion what each authority has access to."})
CREATE(Encryption:Mitigation{title:"Network Encryption", description:"Network encryption is a way of ensuring anyone lisening on the network cannot see packet transmissions in plain text"})
CREATE(Audit:Mitigation{title:"Audit Log", description:"Auditing your employee's actions on the system is a secure way of analysing if someone is conducting malicious activity on the system."})
CREATE
  (SMitigation)-[:MITIGATION]->(ACL),
  (SMitigation)-[:MITIGATION]->(Encryption),
  (SMitigation)-[:MITIGATION]->(Audit),
  (ACL)-[:MITIGATES]->(Malware),
  (ACL)-[:MITIGATES]->(Insider),
  (ACL)-[:MITIGATES]->(Phishing),
  (ACL)-[:CONTROLS]->(Staff),
  (Encryption)-[:MITIGATES]->(MitM),
  (Encryption)-[:INTERCEPTS]->(Staff),
  (Audit)-[:MITIGATES]->(Insider),
  (Audit)-[:MITIGATES]->(MitM),
  (Audit)-[:CONTROLS]->(Staff)
