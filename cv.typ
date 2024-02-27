#import "template.typ": template, summary, skills, links, interests, education, experience, experience_list

#let summary = summary(lorem(50))

#let skills = skills(
  ("Go", "Rust", "Python"),
  ("GraphQL", "gRPC", "REST"),
)

#let links = links((
  (domain: "blog", display: "myBlog", url: "https://someblog.com"),
  (domain: "github", display: "Github", url: "https://github.com/username"),
  (domain: "twitter", display: "twitter(orX)", url: "https://twitter.com/username"),
))

#let education = education(
  university: "Some Uni",
  degree: "BSc probably",
  graduation_date: "Some Year",
  result: "2:1",
  dissertation_title: "Diss Title"
)

#let interests = interests((
  "Board Games", "Bouldering", "Walking Dogs", "Playing Music", "Coding Challenges", "Lego", 
))

#let career_break = experience(
  company: "Career Break",
  role: "Hobbyist Engineer",
  start_date: "Aug 1993",
  end_date: "Present",
  stack: ("Go", "Rust", "GraphQL", "WebDev"),
  achievements: (
    lorem(10),
    lorem(10),
    lorem(10)
  )
)

#let experiences = experience_list((
  career_break,
))

#let left = skills + links + education + interests
#let right = summary + experiences

#template(
  name: "Some Awesome Name",
  email: "hello@my-vanity-domain.dev",
  title: "Senior Software Engineer",
  phone_number: "+44 1234 567890",
  l: left,
  r: right
)
