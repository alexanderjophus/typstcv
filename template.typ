#show link: underline
#let primary_colour = rgb("#ff7f00") // orange
#let link_colour = rgb("#1E90FF") // blue

#let section_header(txt) = {
  text(15pt, font: "IBM Plex Sans Medium", fill: primary_colour)[#underline(extent: 2pt)[#txt]]
}

#let dot_separator(array) = {
  layout(size => style(styles => [
    #let w = 0pt
    #let rows = ()
    #let row = ()
    #for item in array {
      if w + measure(item, styles).width < size.width * 0.85 {
        w += measure(item + " • ", styles).width
        row.push(item)
      } else {
        rows.push(row)
        row = ()
        row.push(item)
        w = measure(item, styles).width
      }
    }
    #rows.push(row)
    #rows.map(r => r.join(" • ")).join(linebreak())
  ]))
}

#let skills(languages, skills) = {
  section_header("Skills")
  linebreak()
  text(12pt)[#dot_separator(languages)]
  dot_separator(skills)
}

#let links(ls) = {
  section_header("Links")
  linebreak()
  ls.map(
    l => text(weight: "bold", l.domain) + "://" + text(fill: link_colour, link(l.url)[#underline[#l.display]])
  ).join(linebreak())
  linebreak()
}

#let interests(content) = {
  section_header("Interests")
  linebreak()
  dot_separator(content)
  linebreak()
}

#let education(
  university: "",
  degree: "",
  graduation_date: "",
  result: "",
  dissertation_title: "",
) = {
  section_header("Education")
  linebreak()
  text(12pt, weight: "medium")[#university]
  linebreak()
  text(9pt)[#degree]
  linebreak()
  text(9pt)[#graduation_date | #result]
  linebreak()
  text(9pt, weight: "medium")[Dissertation: ]
  text(9pt)[#dissertation_title]
  linebreak()
}

#let community(cs) = {
  section_header("Community")
  linebreak()
  text(9pt)[#cs.map(c => "• " + c).join(linebreak())]
  linebreak()
}

#let summary(txt) = {
  section_header("Summary")
  linebreak()
  text(11pt)[#txt]
  linebreak()
}

#let experience(
  company: "",
  role: "",
  start_date: "",
  end_date: "",
  stack: [],
  achievements: [],
) = {
  text(12pt, weight: "medium")[#company | #role | #start_date - #end_date]
  linebreak()
  text(weight: "bold", 9pt)[#stack.join(" • ")]
  linebreak()
  text(9pt)[#achievements.map(a => "• " + a).join(linebreak())]
}

#let experience_list(exps) = {
  section_header("Experience")
  linebreak()
  exps.map(exp => text(exp)).join(linebreak())
}

#let template(
  name: "",
  email: "",
  title: "",
  phone_number: "",
  l: [],
  r: [],
) = {
  set document(
    title: name + "'s CV",
    author: name,
  )
  set text(9.8pt, font: "IBM Plex Sans")
  set page(
    margin: (x: 32pt, y: 40pt),
  )

  align(center, text(20pt)[= #name])

  align(center, text(14pt, email + " • " + text(fill: primary_colour, title) + " • " + phone_number))
  
  line(stroke: 1pt + primary_colour, length: 100%)
  
  grid(
    columns: (2fr, 5fr),
    rows: (auto, auto),
    gutter: 3pt,
    l,
    r,
  )
}