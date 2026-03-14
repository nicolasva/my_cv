require 'prawn'
require 'prawn/table'

Prawn::Document.generate("Nicolas_Vandenbogaerde_FullModernCV.pdf", page_size: 'A4') do |pdf|
  header_color = "0066CC"
  section_bg = "E6F2FF"

  # --- Header ---
  pdf.fill_color header_color
  pdf.text "Nicolas VANDENBOGAERDE", size: 22, style: :bold, align: :center
  pdf.text "Senior Backend Engineer | Ruby on Rails & Elixir | Microservices & AI | OSS Contributor",
           size: 12, style: :italic, align: :center, color: "333333"
  pdf.move_down 10

  # --- Contact ---
  contact_data = [
    ["Phone: +33 7 66 44 15 16", "Email: nicolas.vandenbogaerde@gmail.com"],
    ["GitHub: https://github.com/nicolasva", "LinkedIn: https://linkedin.com/in/vandenbogaerde-nicolas-86451b78"]
  ]
  pdf.table(contact_data, cell_style: {border_width: 0, padding: [2,5], size: 9}, width: pdf.bounds.width)
  pdf.move_down 10

  # --- Section Helper ---
  section_title = lambda do |title|
    pdf.fill_color header_color
    pdf.fill_rectangle [pdf.bounds.left, pdf.cursor], pdf.bounds.width, 18
    pdf.fill_color "FFFFFF"
    pdf.text_box title, at: [pdf.bounds.left+5, pdf.cursor-4], size: 12, style: :bold
    pdf.move_down 20
    pdf.fill_color "000000"
  end

  # --- Professional Summary ---
  section_title.call("Professional Summary")
  pdf.text "Backend engineer with 15+ years experience designing scalable distributed systems, microservices, and AI-powered applications. Expert in Rails, Elixir, Kubernetes, Docker. OSS contributor to Rails, RSpec, RuboCop, and Redis. Recognized in Rails Foundation 'This Week in Rails'. Strong leadership and mentoring experience."
  pdf.move_down 10

  # --- Technical Skills ---
  section_title.call("Technical Skills")
  skills_data = [
    ["Languages & Frameworks", "Ruby, Rails, Elixir/Phoenix, Node.js, JS (ES6, React, AngularJS, BackboneJS), Java, C/C++, PHP, HTML/CSS/SCSS"],
    ["Databases", "MySQL, PostgreSQL, Redis, Oracle, SQLite, CouchDB"],
    ["Tools", "Docker, Kubernetes, Git, CircleCI, Codeship, Capistrano, Apache"],
    ["Cloud & AI", "IBM Watson, Twilio, LLM integration, REST APIs"]
  ]
  pdf.table(skills_data, header: false, row_colors: ["FFFFFF", section_bg], cell_style: {padding: [5,5], borders: []})
  pdf.move_down 10

  # --- Professional Experience ---
  section_title.call("Professional Experience")

  experiences = [
    ["Mipise – Lead Developer | Jan 2022 – Mar 2025",
     ["Lead developer on real estate back-office and cryptocurrency integration (Tezos) with architecture definition",
      "Code optimization for performance and readability",
      "Weekly presentations of new technologies/features",
      "Mentoring junior developers",
      "Development of numerous features on Mipise application",
      "Deployment with full Cucumber & RSpec testing",
      "Development of custom Ruby gems (Lemonway, Souscript)",
      "Tutoring an EPITECH student",
      "Migration of legacy jQuery scripts to ES6/React"]],
    
    ["MyMentor.fr – Lead Developer | Aug 2019 – Dec 2020",
     ["Development of platform connecting students and teachers for home tutoring",
      "Implemented tracking and testing for both teachers and students (React + Ruby)",
      "Lead developer responsibilities for architecture and implementation"]],
    
    ["Tsoon – Lead Ruby Developer | May 2019 – Jul 2019",
     ["Prototype development for telephone appointments with AI understanding (IBM Watson + Twilio)",
      "Freelance mobile app development (hybrid, Cordova, Android)",
      "RESTful API development",
      "Optimized scalability and performance using Redis"]],
    
    ["Teezily – Ruby on Rails Developer | Jan 2017 – Jul 2017",
     ["Integrated products to marketplaces (Google Shopping, Amazon) with Lengow",
      "Developed search engine with Algolia",
      "Optimized main page and menu for SEO",
      "Performance optimizations with Redis",
      "Bug fixes and small feature improvements"]],
    
    ["Tsoon – Lead Developer | Sept 2015 – Jan 2017",
     ["Creation of web application for occupational medicine appointment management in Ruby on Rails"]],
    
    ["Fuze – Backend Developer (Freelance) | Jan 2015 – Jun 2015",
     ["Developed plugins to improve real-time discussion channels and scalability",
      "Integration with Google Drive and Google Contacts",
      "Bug fixes and optimizations"]],
    
    ["Rhezo – Web Developer (Freelance) | Dec 2014 – Feb 2015",
     ["Website development for HR management using Ruby on Rails"]],
    
    ["Dotgee – Developer (Freelance) | Sept 2013 – May 2014",
     ["Optimized scalability of businessimmo.com",
      "Developed web applications using PhoneGap, Cordova, Middleman, AngularJS",
      "Airbus Lisi Project: managed aeronautic materials"]],
    
    ["Boosket – Developer | Oct 2012 – Feb 2013",
     ["Boosket-ads: platform for creating and optimizing Facebook purchasing space",
      "Boosket-Shop: social commerce SaaS (Rails, BackboneJS, MongoDB, MySQL)",
      "Developed Act-as-graphable gem for creating graphs from multiple sources"]],
    
    ["Tharsis Software – Backend Developer | Dec 2009 – Aug 2011",
     ["Backoffice web development for France Télévision",
      "2D motor development with SVG and ECMAScript (Galeries Lafayette)",
      "Statistics tools in Rails",
      "User and group management system in Rails",
      "Billing application in Rails"]],
    
    ["Totally recast computer network – Developer | Jul 2007 – Jun 2009",
     ["Web development for www.avosbonsplans.com",
      "Intranet application development",
      "Newsletter applications in Rails"]],
    
    ["INSIA – Audit & Development | Dec 2006 – Jun 2007",
     ["Audit of new network architecture",
      "Intranet development",
      "Application development with Word document rendering (OLE technology)"]],
    
    ["VECI – Oracle Server Admin / E-commerce | Nov 2004 – Dec 2004",
     ["E-commerce website development"]]
  ]

  experiences.each do |title, bullets|
    pdf.text title, style: :bold
    bullets.each { |b| pdf.text "• #{b}" }
    pdf.move_down 5
  end

  pdf.move_down 8

  # --- Open Source & Recognition ---
  section_title.call("Open Source & Recognition")
  pdf.text "Rails: PR #56856, #56979"
  pdf.text "RSpec-Rails: PR #2886 https://github.com/rspec/rspec-rails/pull/2886"
  pdf.text "RuboCop: PR #14937 https://github.com/rubocop/rubocop/pull/14937"
  pdf.text "Redis-client: PR #286 https://github.com/redis-rb/redis-client/pull/286"
  pdf.text "Publication : Featured in 'This Week in Rails', Rails Foundation https://www.linkedin.com/posts/ruby-on-rails-org_this-week-in-rails-action-texts-markdown-activity-7438185378097856512-F1T7"
  pdf.text "Featured in American press: Annandale Advocate , 2008, for World Robotics Competition"

  pdf.move_down 8

  # --- Selected Projects ---
  section_title.call("Selected Projects")
  pdf.text "ChatGPT Microservices: Distributed LLM system (Docker + Kubernetes) https://github.com/nicolasva/chat_gpt_with_microservices"
  pdf.text "ChatGPT Elixir: Concurrent AI backend https://github.com/nicolasva/chatgpt_elixir"
  pdf.text "IBM Watson + Twilio AI Appointments: Speech-to-Text AI system"

  pdf.move_down 8

  # --- Education ---
  section_title.call("Education")
  pdf.text "INSIA / INGESUP – Advanced Computer Science, 2006–2008"
  pdf.text "BTS Informatique de Gestion – Networking, 2006"
  pdf.text "Baccalauréat STI Electronique, 2004"
  pdf.text "Linguistic stay, Salem State University, Boston, 2001"

  pdf.move_down 8

  # --- Languages ---
  section_title.call("Languages")
  pdf.text "French: Native"
  pdf.text "English: Professional"
end