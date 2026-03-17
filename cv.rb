require 'prawn'
require 'prawn/table'

Prawn::Document.generate("Nicolas_Vandenbogaerde_CV_Complete_Final.pdf") do
  font_families.update("ArialUnicode" => {
    normal: "/Library/Fonts/Arial Unicode.ttf",
    bold: "/Library/Fonts/Arial Unicode.ttf"
  })
  font "ArialUnicode"

  # ---------- HEADER ----------
  fill_color "0B3D91"
  text "Nicolas VANDENBOGAERDE", size: 30, style: :bold
  fill_color "000000"
  move_down 5
  text "Senior Ruby / Rails Engineer & Elixir | Microservices Architect | AI & LLM Integration | Open Source Contributor | International Experience", size: 12
  move_down 10
  text "\u260E 07 66 44 15 16   |   \u2709 nicolas.vandenbogaerde@gmail.com", size: 10
  text "\u25C8 GitHub: https://github.com/nicolasva   |   LinkedIn: https://www.linkedin.com/in/vandenbogaerde-nicolas-86451b78", size: 10
  move_down 15

  # ---------- TECHNICAL SKILLS ----------
  skills_data = [
    ["Languages", "Ruby, Ruby on Rails, Node.js, JavaScript (ES6, Backbone.js, React), Java, C/C++, PHP, VBScript, Shell scripting, HTML/CSS/SCSS"],
    ["Frameworks", "Rails, Sinatra, Phoenix, React, AngularJS, Backbone.js, Shoes, CoffeeScript, Prototype, Android SDK"],
    ["Databases", "MySQL, PostgreSQL, Oracle, SQLite, CouchDB"],
    ["Tools / DevOps", "Git, Docker, Kubernetes, CircleCI, Codeship, Capistrano, Apache, Sage"],
    ["Open Source", "Rails, Redis, RuboCop, RSpec, 2D Ruby SVG engine (Tharsis Software) https://github.com/nicolasva/2DMotor"]
  ]
  skills_table = make_table(skills_data, cell_style: { borders: [], padding: [2,5,2,5] })
  skills_h = 25 + 5 + skills_table.height + 5
  fill_color "EAF2FB"
  fill_rectangle [0, cursor], bounds.width, skills_h
  fill_color "0B3D91"
  text "\u2699 Technical Skills", size: 18, style: :bold
  fill_color "000000"
  move_down 5
  skills_table.draw
  move_down 12
  stroke_color "0B3D91"
  stroke_horizontal_rule
  move_down 12

  # ---------- PROFESSIONAL EXPERIENCE ----------
  fill_color "EAF2FB"
  fill_rectangle [0, cursor], bounds.width, 25
  fill_color "0B3D91"
  text "\u2605 Professional Experience", size: 18, style: :bold
  fill_color "000000"
  move_down 5

  experiences = [
    # -------- Gîtes bretagne --------
    {
      company: "Gîtes Bretagne", period: "Mars 2025 - présent", title: "Fondateur & Gérant",
      details: [
        "Création et gestion complète d’une entreprise de location de gîtes, de la conception produit à la gestion opérationnelle",
        "Optimisation de l’expérience client et des processus internes, automatisation des opérations",
        "Développement des compétences en leadership, organisation, product management et prise de décision stratégique"
      ]
    },
    # -------- Mipise --------
    {
      company: "Mipise (France)", period: "Jan 2022 – Mar 2025", title: "Lead Backend Engineer",
      details: [
        "Lead development of real estate investment platform and crypto infrastructure on Tezos blockchain, enabling €3M funding round",
        "Optimized code performance and readability, enabling faster feature deployment",
        "Developed Ruby gems integrating with Lemonway payment APIs, automating payment flows",
        "Migrated legacy jQuery frontend to modern ES6 / React",
        "Mentored junior engineers and ran weekly tech sessions",
        "Delivered production-ready features with RSpec and Cucumber"
      ]
    },
    # -------- Mymentor.fr --------
    {
      company: "Mymentor.fr (France)", period: "Aug 2019 – Dec 2020", title: "Lead Developer",
      details: [
        "Built platform connecting students and teachers for home tutoring with progress tracking",
        "Implemented full Rails backend and React frontend",
        "Created automated testing and monitoring pipelines",
        "Guided junior developers, increasing team productivity by 25%"
      ]
    },
    # -------- Tsoon AI / Mobile --------
    {
      company: "Tsoon (France)", period: "May 2019 – Jul 2019", title: "Lead Ruby Developer – AI & Mobile Apps",
      details: [
        "Developed AI-powered appointment system using IBM Watson (speech-to-text) and Twilio",
        "Built scalable Rails backend APIs optimized with Redis",
        "Created hybrid mobile apps (Cordova / Android)",
        "Reduced manual call handling by 80%",
        "Early adoption of AI for real-world healthcare applications"
      ]
    },
    # -------- Teezily --------
    {
      company: "Teezily (Remote)", period: "Jan 2017 – Jul 2017", title: "Ruby on Rails Developer",
      details: [
        "Developed integrations with marketplaces (Amazon, Google Shopping) via Lengow",
        "Built search functionality using Algolia",
        "Optimized backend performance with Redis",
        "Enhanced website frontend and main menu for usability and SEO"
      ]
    },
    # -------- Tsoon Web --------
    {
      company: "Tsoon (France)", period: "Sep 2015 – Jan 2017", title: "Lead Developer",
      details: [
        "Created web application for occupational medicine appointment management in Rails",
        "Designed scalable backend and hybrid mobile features for appointments",
        "Optimized workflow and performance for medical staff"
      ]
    },
    # -------- Fuze / LiveMinutes --------
    {
      company: "Fuze / LiveMinutes (San Francisco, Remote)", period: "Jan 2015 – Jun 2015", title: "Backend / Full-Stack Developer",
      details: [
        "Developed real-time collaboration plugins for LiveMinutes platform",
        "Backend services in Node.js, frontend with Backbone.js",
        "Integrated Google Drive and Contacts APIs",
        "Optimized scalability and reduced latency by 50%",
        "Contributed to enterprise SaaS product in Silicon Valley"
      ]
    },
    # -------- Rhezo --------
    {
      company: "Rhezo (Freelance)", period: "Dec 2014 – Feb 2015", title: "Web Developer",
      details: [
        "Developed HR management website with Ruby on Rails",
        "Implemented backend logic for human resources processes"
      ]
    },
    # -------- Dotgee --------
    {
      company: "Dotgee (Freelance)", period: "Sep 2013 – May 2014", title: "Web & Mobile Developer",
      details: [
        "Optimized scalability and performance of businessimmo.com",
        "Developed web applications with PhoneGap, Cordova, Middleman, AngularJS",
        "Worked on Lisi Project for managing aeronautic materials for Airbus"
      ]
    },
    # -------- Boosket --------
    {
      company: "Boosket", period: "Oct 2012 – Feb 2013", title: "Ruby on Rails Developer",
      details: [
        "Boosket-ads: platform for creating and optimizing purchasing space on Facebook",
        "Boosket-Shop: social commerce solution (mobile & Facebook, SaaS mode)",
        "Developed Act-as-Graphable gem to generate charts from data sources"
      ]
    },
    # -------- Tharsis Software --------
    {
      company: "Tharsis Software (Paris Innovation)", period: "Dec 2009 – Aug 2011", title: "Backend Developer",
      details: [
        "Developed France Télévision back office applications",
        "Built a 2D Ruby engine for generating interactive SVG elements for floor plans, improving client visualization (open-sourced: https://github.com/nicolasva/2DMotor)",
        "Created statistics tools, user/group management, and billing applications in Rails"
      ]
    },
    # -------- Garance Productions --------
    {
      company: "Garance Productions", period: "Jul 2007 – Jun 2009", title: "Web & Intranet Developer",
      details: [
        "Developed www.avosbonsplans.com using Ruby on Rails",
        "Created intranet applications and newsletter systems"
      ]
    },
    # -------- BATI-PLANS --------
    {
      company: "BATI-PLANS", period: "Sep 2006 – Jun 2007", title: "Intranet Developer",
      details: [
        "Developed intranet applications and automated Word document rendering using OLE technology"
      ]
    },
    # -------- Hôpitaux de Paris --------
    {
      company: "Hôpitaux de Paris", period: "Nov 2005 – Jun 2006", title: "Oracle Server Administrator",
      details: [
        "Managed Oracle server administration for hospital systems"
      ]
    },
    # -------- VECI --------
    {
      company: "VECI", period: "Nov 2004 – Dec 2004", title: "E-commerce Web Developer",
      details: [
        "Developed e-commerce website using Ruby on Rails"
      ]
    }
  ]

  experiences.each do |exp|
    title_text = "#{exp[:title]} — #{exp[:company]} | #{exp[:period]}"
    details_text = exp[:details].map { |d| "• #{d}" }.join("\n")

    title_h = height_of(title_text, size: 12) + 4
    details_h = height_of(details_text, size: 10) + 10
    total_h = title_h + details_h

    # Start new page if not enough room
    start_new_page if cursor < total_h + 10

    # Light blue background for the whole entry
    fill_color "EAF2FB"
    fill_rectangle [0, cursor], bounds.width, total_h

    # Darker blue background for title line
    fill_color "DCECFB"
    fill_rectangle [0, cursor], bounds.width, title_h

    fill_color "0B3D91"
    text title_text, size: 12, style: :bold
    fill_color "000000"
    move_down 2
    exp[:details].each do |d|
      text "• #{d}", size: 10, indent_paragraphs: 10
    end
    move_down 6
  end

  # Separator
  stroke_color "0B3D91"
  stroke_horizontal_rule
  move_down 10

  # ---------- EDUCATION ----------
  edu_h = 25 + 3 + (3 * 14) + 3
  fill_color "EAF2FB"
  fill_rectangle [0, cursor], bounds.width, edu_h
  fill_color "0B3D91"
  text "\u2666 Education", size: 18, style: :bold
  fill_color "000000"
  move_down 3
  text "INSIA / INGESUP – Computer Science (2006–2008)", size: 10
  text "BTS Informatique de Gestion – Network Option (2006)", size: 10
  text "Baccalauréat STI Électronique (2004)", size: 10
  move_down 12
  stroke_color "0B3D91"
  stroke_horizontal_rule
  move_down 12

  # ---------- PUBLICATIONS & OSS ----------
  oss_text = "• Rails, RSpec, RuboCop, Redis contributions (https://github.com/nicolasva)\n• Open-sourced 2D Ruby SVG engine for interactive floor plans: https://github.com/nicolasva/2DMotor\n• Featured in US journal\n• LinkedIn posts by Rails Fundation / Open source PRs : https://www.linkedin.com/posts/ruby-on-rails-org_this-week-in-rails-action-texts-markdown-activity-7438185378097856512-F1T7/"
  oss_h = 25 + 3 + height_of(oss_text, size: 10) + 5
  fill_color "EAF2FB"
  fill_rectangle [0, cursor], bounds.width, oss_h
  fill_color "0B3D91"
  text "\u270E Open Source Contributions & Publications", size: 18, style: :bold
  fill_color "000000"
  move_down 3
  text "• Rails, RSpec, RuboCop, Redis contributions (https://github.com/nicolasva)", size: 10
  text "• Open-sourced 2D Ruby SVG engine for interactive floor plans: https://github.com/nicolasva/2DMotor", size: 10
  text "• Featured in US journal", size: 10
  text "• LinkedIn posts by Rails Fundation / Open source PRs : https://www.linkedin.com/posts/ruby-on-rails-org_this-week-in-rails-action-texts-markdown-activity-7438185378097856512-F1T7/", size: 10
  move_down 12
  stroke_color "0B3D91"
  stroke_horizontal_rule
  move_down 12

  # ---------- LANGUAGES ----------
  lang_h = 25 + 3 + (2 * 14) + 3
  fill_color "EAF2FB"
  fill_rectangle [0, cursor], bounds.width, lang_h
  fill_color "0B3D91"
  text "\u25C6 Languages", size: 18, style: :bold
  fill_color "000000"
  move_down 3
  text "French: Native", size: 10
  text "English: Professional", size: 10
end