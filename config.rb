activate :dotenv

Dir["lib/*.rb"].each { |file| require file }
Haml::TempleEngine.disable_option_validator!
###
# Compass
###

activate :directory_indexes
activate :meta_tags

set :url_root, 'https://www.makersacademy.com'
activate :search_engine_sitemap

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers CurrentPageHelper,
        MarkdownHelper,
        PossessiveHelper,
        SlugHelper,
        ImageHelper,
        GraduatesHelper,
        RawHelper,
        StatsHelper,
        BooleanHelper

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
data.graduates.each do | grad |
  if grad[:case_study]
    url_slug = graduate_slug(grad)
    proxy "/case-studies/#{url_slug}.html", "/case-studies/template.html", locals: { grad: grad }, ignore: true
  end
end

set :css_dir, 'sass'
set :js_dir, 'javascripts'
set :partials_dir, 'partials'
set :images_dir, 'images'

sprockets.append_path File.join root, 'bower_components'

set :apply_url, "/apply"
set :onsite_application_form_url, "http://apply.makersacademy.com"
set :remote_application_form_url, "http://apply.makersacademy.com/remote/application"
set :precourse_beta_application_form_url, "http://apply.makersacademy.com/precourse-beta/application"

# Redirects from old site urls
redirect "payments/new.html", to: "#{config.onsite_application_form_url}/payments/new"
redirect "apply-for-ronin.html", to: config.onsite_application_form_url
# redirect "fellowship.html", to: "http://techcityfellowship.org/"
redirect "life-at-makers.html", to: "about-us.html"
redirect "talks.html", to: "employers.html"
redirect "talks/apply.html", to: "employers.html"
redirect "students.html", to: "graduates.html"
redirect "student-blogs.html", to: "graduates.html"
redirect "student-projects.html", to: "graduates.html"
redirect "graduate-stories.html", to: "graduates.html"
redirect "testimonials.html", to: "graduates.html"
redirect "alumni.html", to: "graduates.html"
redirect "network.html", to: "employers.html"
redirect "payment-plans.html", to: "payment.html"
redirect "jobs.html", to: "https://makers-academy.breezy.hr/"
redirect "blog.html", to: "http://blog.makersacademy.com"
redirect "payments.html", to: "payment.html"
redirect "partners.html", to: "employers.html"
redirect "learn-to-code-1.html", to: "entrepreneurs.html"
redirect "learn-to-code-2.html", to: "index.html"
redirect "learn-to-code-3.html", to: "education-leaver.html"
redirect "learn-to-code-4.html", to: "index.html"
redirect "learn-to-code-5.html", to: "index.html"
redirect "faq.html", to: "http://help.makersacademy.com"
redirect "employers-startups.html", to: "startups.html"
redirect "diversity.html", to: "employers/diversity.html"
redirect "cards.html", to: "https://makersacademy.github.io/cards"
redirect "cosmo.html", to: "women.html"
redirect "fellowship.html", to: "https://fellowship.makersacademy.com?utm_source=website&utm_medium=redirect"
redirect "fellowships.html", to: "https://fellowship.makersacademy.com?utm_source=website&utm_medium=redirect"
redirect "learn-ruby-in-15.html", to: "index.html"
redirect "education-leaver.html", to: "curriculum.html"

# Uncomment to redirect all /employers routes to employers. subdomain
redirect "employers.html", to: "http://employers.makersacademy.com"
redirect "employers/cities.html", to: "http://employers.makersacademy.com"
redirect "employers/diversity.html", to: "http://employers.makersacademy.com"
redirect "employers/sponsors.html", to: "http://employers.makersacademy.com"
redirect "employers/thank-you.html", to: "http://employers.makersacademy.com/request-a-call/success"
redirect "employers/users.html", to: "http://employers.makersacademy.com"
redirect "employers/contact.html", to: "http://employers.makersacademy.com/request-a-call"

# New site redirects

redirect "index.html", to: "https://makers.tech/"
redirect "about-us.html", to: "https://makers.tech/about-us/"
redirect "acast.html", to: "https://makers.tech/"
redirect "alumni.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "amazon-alexa.html", to: "https://makers.tech/"
redirect "apply.html", to: "https://makers.tech/become/makers-academy/"
redirect "apply-for-ronin.html", to: "https://makers.tech/become/makers-academy/"
redirect "blog.html", to: "https://makers.tech/medium-blog.makers.tech"
redirect "cards.html", to: "https://makers.tech/"
redirect "career-changers.html", to: "https://makers.tech/"
redirect "career-support.html", to: "https://makers.tech/become/makers-academy/"
redirect "case-studies/aaron-kendall.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/aaron-sweeney.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/adam-lancaster.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/adrian-booth.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/alex-blease.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/alex-handy.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/alex-saunders.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/amaal-ali.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/amy-yang.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/andrea-armiliato.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/andrew-cumine.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/andrew-dowell.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/andy-newman.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/anindya-bhattacharyya.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/anna-smith.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/annemarie-kohler.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/arnold-manzano.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/bibiana-cristfol.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/caitlin-gulliford.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/charlotte-fereday.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/chris-ward.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/chris-wynne.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/chuka-ebi.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/craig-horsborough.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/daniel-ortiz.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/denise-yu.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/deon-tan.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/ed-obrien.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/edward-withers.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/elena-garrone.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/elena-vilimaite.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/elia-bardashevich.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/emily-carson.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/emily-worrall.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/emma-baddeley.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/emma-beynon.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/errol-elliott.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/ethel-ng.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/fergus-orbach.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/george-maddocks.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/george-mcgowan.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/gerard-morera.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/giamir-buoncristiani.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/giuseppe-de-santis.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/hannah-carney.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/harriet-craven.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/harry-gordon.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/heather-campbell.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/ina-tsetsova.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/jack-oddy.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/james-borrell.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/james-jenkins-yates.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/james-steel.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/jini-coroneo.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/joe-sweeny.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/joe-wroe.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/jonathan-gardiner.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/jonathan-sayer.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/karin-nielsen.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/kirsten-jones.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/lorenzo-turrino.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/lucy-fang.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/maciej-kurek.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/mara-wanot.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/marco-araujo.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/marcus-bullock.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/maria-romero.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/mario-gintili.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/matteo-manzo.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/matthew-bridges.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/matt-paul.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/maya-driver.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/merve-taner.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/mic-cassano.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/michael-harrison.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/michael-lennox.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/misa-ogura.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/mishal-islam.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/moe-sadoon.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/nick-dyer.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/nick-roberts.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/nicola-hughes.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/nicole-pellicena.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/nico-saueressig.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/nic-yeeles.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/norm-fasey.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/paul-harker.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/prashant-mathias.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/rachel-nolan.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/rachel-smith.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/rebecca-piper.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/reiss-johnson.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/retesh-bajaj.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/richard-watkins.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/rob-bowers.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/robert-summers.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/rufus-raghunath.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/ruth-earle.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/sammy-abukmeli.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/sandrine-zhang-ferron.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/sarah-young.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/sara-oconnor.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/simon-woolf.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/sivan-patel.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/sophie-gill.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/sroop-sunar.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/stefania-cardenas.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/tatiana-soukiassian.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/thomas-strothjohann.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/tim-hyson.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/tim-robertson.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "case-studies/tim-scully.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/tom-coakes.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/vanessa-virgitti.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/van-le.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/vicky-gray.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/viola-crellin.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/will-hall.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "case-studies/william-bautista.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "case-studies/yvette-cook.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "case-studies/zeeshan-rasool.html", to: "https://makers.tech/success-story-peter-johnstone/"
redirect "case-studies/zeina-dajani.html", to: "https://makers.tech/success-story-dania-mah/"
redirect "case-studies/zeshan-rasul.html", to: "https://makers.tech/success-story-chris-harrop/"
redirect "code-of-conduct.html", to: "https://makers.tech/code-of-conduct"
redirect "codingdays.html", to: "https://makers.tech/event/open-day-graduation/"
redirect "cosmo.html", to: "https://makers.tech/community/"
redirect "curriculum.html", to: "https://makers.tech/curriculum/"
redirect "deloitte.html", to: "https://makers.tech/success-story-dominic-vernon/"
redirect "demo-day.html", to: "https://makers.tech/event/open-day-graduation/"
redirect "digital-gurus.html", to: "https://makers.tech/"
redirect "digital-gurus/success.html", to: "https://makers.tech/"
redirect "diversity.html", to: "https://makers.tech/about-us/"
redirect "ebook.html", to: "https://makers.tech/community/"
redirect "education-leaver.html", to: "https://makers.tech/become/apprentice"
redirect "elements.html", to: "https://makers.tech/"
redirect "employer-faqs.html", to: "https://makers.tech/hire/"
redirect "employers.html", to: "https://makers.tech/hire/"
redirect "employers/cities.html", to: "https://makers.tech/hire/"
redirect "employers/contact.html", to: "https://makers.tech/hire/"
redirect "employers/diversity.html", to: "https://makers.tech/hire/"
redirect "employers/sponsors.html", to: "https://makers.tech/hire/"
redirect "employers/thank-you.html", to: "https://makers.tech/hire/"
redirect "employers/users.html", to: "https://makers.tech/hire/"
redirect "employers-startups.html", to: "https://makers.tech/hire/"
redirect "entrepreneurs.html", to: "https://makers.tech/curriculum/"
redirect "escapethecity.html", to: "https://makers.tech/community/"
redirect "events.html", to: "https://makers.tech/community/"
redirect "faq.html", to: "https://makers.techDon't redirect - Already redirects to help.makersacademy.com"
redirect "feedback.html", to: "https://makers.tech/community/"
redirect "fellowship.html", to: "https://makers.tech/fellowship/"
redirect "fellowships.html", to: "https://makers.tech/fellowship/"
redirect "financial-times.html", to: "https://makers.tech/become/makers-academy/"
redirect "fintech.html", to: "https://makers.tech/"
redirect "fridge-raiders.html", to: "https://makers.tech/"
redirect "fridge-raiders/success.html", to: "https://makers.tech/"
redirect "gradquiz.html", to: "https://makers.tech/community/"
redirect "gradquiz/success.html", to: "https://makers.tech/"
redirect "graduates.html", to: "https://makers.tech/"
redirect "graduate-stories.html", to: "https://makers.tech/"
redirect "job-guarantee-terms.html", to: "https://makers.tech/job-offer-guarantee-terms/"
redirect "jobs.html", to: "https://makers.tech/"
redirect "landing.html", to: "https://makers.tech/"
redirect "learn-ruby-in-15.html", to: "https://makers.tech/curriculum/"
redirect "learn-to-code-1.html", to: "https://makers.tech/curriculum/"
redirect "learn-to-code-2.html", to: "https://makers.tech/curriculum/"
redirect "learn-to-code-3.html", to: "https://makers.tech/curriculum/"
redirect "learn-to-code-4.html", to: "https://makers.tech/curriculum/"
redirect "learn-to-code-5.html", to: "https://makers.tech/curriculum/"
redirect "life-at-makers.html", to: "https://makers.tech/curriculum/"
redirect "magic.html", to: "https://makers.tech/community/"
redirect "merger-market.html", to: "https://makers.tech/"
redirect "network.html", to: "https://makers.tech/community/"
redirect "onsite.html", to: "https://makers.tech/become/makers-academy/"
redirect "onsite-vs-remote.html", to: "https://makers.tech/curriculum/"
redirect "opt-in.html", to: "https://makers.tech/"
redirect "opt-out.html", to: "https://makers.tech/"
redirect "partners.html", to: "https://makers.tech/"
redirect "payment.html", to: "https://makers.tech/financing/"
redirect "payment-plans.html", to: "https://makers.tech/financing/"
redirect "payments.html", to: "https://makers.tech/financing/"
redirect "payments/new.html", to: "https://makers.tech/financing/"
redirect "podcast.html", to: "https://makers.tech/community/"
redirect "podcast/success.html", to: "https://makers.tech/"
redirect "precourse-beta.html", to: "https://makers.tech/curriculum/"
redirect "press.html", to: "https://makers.tech/community/"
redirect "press/makers-academy-launches-scholarship-programme.html", to: "https://makers.tech/community/"
redirect "press/tesco-and-makers-academy.html", to: "https://makers.tech/"
redirect "privacy.html", to: "https://makers.tech/privacy/"
redirect "qardhasan.html", to: "https://makers.tech/become/makers-academy/"
redirect "quiz.html", to: "https://makers.tech/community/"
redirect "remote.html", to: "https://makers.tech/"
redirect "startups.html", to: "https://makers.tech/"
redirect "student-blogs.html", to: "https://blog.makers.tech"
redirect "student-projects.html", to: "https://makers.tech/become/makers-academy/"
redirect "students.html", to: "https://makers.tech/success-story-jennifer-shepherd/"
redirect "talks.html", to: "https://makers.tech/community/"
redirect "talks/apply.html", to: "https://makers.tech/community/"
redirect "team.html", to: "https://makers.tech/about-us/"
redirect "terms.html", to: "https://makers.tech/student-terms/"
redirect "testimonials.html", to: "https://makers.tech/success-story-funmi-adewodu/"
redirect "the-north.html", to: "https://makers.tech/become/makers-academy/"
redirect "thoughtworks.html", to: "https://makers.tech/"
redirect "tw.html", to: "https://makers.tech/"
redirect "typography.html", to: "https://makers.tech/"
redirect "women.html", to: "https://makers.tech/"

configure :development do
  activate :livereload
  set :segment_key, 'fjB2Afsk8U7NNgugtKdte88HGNXk3yr7'

  # custom setting for switching off analytics in development
  set :run_analytics, false

  set :employers_form_endpoint, 'https://formkeep.com/f/b95fcb2be128'

  # turn on to view a baseline grid for setting vertical rhythm
  set :show_baseline_grid, false
end

# Build-specific configuration
configure :build do

  activate :imageoptim do |options|
    options.pngout    = false
    options.svgo      = false
  end

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  set :run_analytics, true

  set :segment_key, ENV.fetch('SEGMENT_KEY', '8NGMT5SwWiR5BvuyrpTsirX9XY8CeZ4R')

  set :employers_form_endpoint, 'https://formkeep.com/f/1ae1f30c4bcf'

  set :show_baseline_grid, false

  #Filewatcher ignore list
  set :file_watcher_ignore,[
      /^bin(\/|$)/,
      /^\.bundle(\/|$)/,
  #   /^vendor(\/|$)/,
      /^node_modules(\/|$)/,
      /^\.sass-cache(\/|$)/,
      /^\.cache(\/|$)/,
      /^\.git(\/|$)/,
      /^\.gitignore$/,
      /\.DS_Store/,
      /^\.rbenv-.*$/,
      /^Gemfile$/,
      /^Gemfile\.lock$/,
      /~$/,
      /(^|\/)\.?#/,
      /^tmp\//
    ]
end
