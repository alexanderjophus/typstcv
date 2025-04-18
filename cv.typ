#import "template.typ": template, summary, skills, links, interests, education, experience, experience_list, awards

#let summary = summary("Visionary physicist and multidisciplinary scientist with expertise in interdimensional physics, materials engineering, and advanced technology development. Award-winning researcher with proven ability to transform theoretical concepts into revolutionary technologies. Demonstrated leadership in managing high-stakes projects and diverse teams while maintaining ethical standards in scientific innovation. Inventor of unstable molecular technology, specialized in cosmic radiation effects, and pioneer of interdimensional travel methodologies.")

#let skills = skills(
  ("Go", "Rust", "Python"),
  ("GraphQL", "gRPC", "REST"),
)

#let links = links((
  (domain: "blog", display: "ReedRichards", url: "https://something.com"),
  (domain: "github", display: "ReedRichards", url: "https://github.com/something"),
  (domain: "twitter", display: "ReedRichards", url: "https://twitter.com/something"),
))

#let awards = awards((
  "Nobel Prize in Physics (2017) for work on interdimensional travel theory",
  "National Medal of Science (2015)",
  "Stark Innovation Award (2014)",
  "Lise Meitner Excellence in Research Award (2012)",
  "MacArthur \"Genius\" Fellowship (2011)",
  "MIT Technology Review \"35 Under 35\" Innovators (2008)",
))

#let education = education((
  (
    university: "California Institute of Technology",
    degree: "Ph.D., Physics and Engineering",
    graduation_date: "2010",
    result: "Distinction",
    dissertation_title: "Quantum Tunneling Effects in Interdimensional Travel"
  ),
  (
    university: "Massachusetts Institute of Technology",
    degree: "M.S., Materials Science",
    graduation_date: "2006",
    result: "Distinction",
    dissertation_title: "Molecular Instability in Non-Newtonian Polymers"
  ),
  (
    university: "Harvard University",
    degree: "B.S., Physics, Mathematics, Electrical Engineering",
    graduation_date: "2004",
    result: "1st",
    dissertation_title: "Theoretical Applications of Cosmic Radiation Manipulation"
  ),
))

#let interests = interests((
  "Deep space astronomy",
  "Classical piano",
  "Chess (Grand Master level)",
  "Scientific education outreach",
  "Antique book collection focusing on early scientific texts"
))

#let baxter = experience(
  company: "Baxter Foundation",
  role: "Founder & Lead Scientist",
  start_date: "2012",
  end_date: "Present",
  stack: ("Go", "Rust", "GraphQL", "WebDev"),
  achievements: (
    "Established multidisciplinary research facility focusing on advanced physics, dimensional exploration, and innovative technology development",
    "Secured over $350M in research funding through grants and private partnerships",
    "Developed unstable molecular fabric technology with applications in aerospace, medicine, and defense",
    "Led groundbreaking research on cosmic radiation effects, resulting in 27 patents",
    "Designed and constructed interdimensional gateway portal, revolutionizing space exploration methodology",
    "Manage team of 35+ scientists across multiple research divisions",
  )
)

#let ff = experience(
  company: "Future Foundation",
  role: "Co-Founder & Scientific Director",
  start_date: "2015",
  end_date: "Present",
  stack: ("Go", "Rust", "GraphQL", "WebDev"),
  achievements: (
    "Founded educational initiative focused on nurturing next generation of scientific innovators",
    "Developed curriculum for gifted youth emphasizing ethical applications of advanced technology",
    "Mentored 75+ exceptional students, with 92% continuing to advanced scientific careers",
    "Collaborate with international educational institutions to establish scientific literacy programs",
    "Secured $50M endowment to provide full scholarships for underprivileged students with scientific aptitude",
  )
)

#let state_uni = experience(
  company: "State University",
  role: "Adjunct Professor of Theoretical Physics",
  start_date: "2013",
  end_date: "Present",
  stack: ("Go", "Rust", "GraphQL", "WebDev"),
  achievements: (
    "Teach graduate-level courses in Advanced Theoretical Physics and Interdimensional Mathematics",
    "Supervise doctoral candidates in specialized research projects",
    "Established laboratory for practical applications of theoretical physics concepts",
    "Published 35+ peer-reviewed articles with university research partners",
  )
)

#let experiences = experience_list((
  baxter,
  ff,
  state_uni,
))

#let left = skills + links + education + awards + interests
#let right = summary + experiences

#template(
  name: "Dr. Reed Richards",
  email: "mr@fantastic.dev",
  title: "Physicist",
  phone_number: "+44 1234 567890",
  l: left,
  r: right
)
