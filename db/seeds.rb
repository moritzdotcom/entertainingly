start = Time.now

puts "deleting previous database..."

Event.destroy_all
Category.destroy_all

puts "creating categories..."

Category.create(name: 'Konzerte', image_url: 'https://cdn.londonandpartners.com/visit/london-organisations/alexandra-palace/92923-640x360-alexandra-palace-gig-640.jpg')
Category.create(name: 'Filme', image_url: 'https://markmeets.com/wp-content/uploads/2013/10/Movie-Releases.jpg')
Category.create(name: 'Bücher', image_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Books_HD_%288314929977%29.jpg')
Category.create(name: 'Museen', image_url: 'https://www.mvv-muenchen.de/fileadmin/_processed_/1/6/csm_museum_16_669_5a248290a4.jpg')
Category.create(name: 'TV-Shows', image_url: 'https://www.otto.de/updated/app/uploads/2020/02/xtv-aufloesung-1-560x315.jpg.pagespeed.ic.uZUoVhkYee.jpg')
Category.create(name: 'Spiele', image_url: 'https://i.cbc.ca/1.2716999.1406221490!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/135000779-board-games.jpg')

event = Event.create(name: 'James Bond 007: Keine Zeit zu sterben', description: 'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', amazon_link: 'https://www.amazon.de/James-Bond-007-sterben-gerahmt/dp/B0826BBMLX/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=8DR8T05H2O2R&keywords=james+bond+keine+zeit+zu+sterben&qid=1584638513&sprefix=james+bond+keine%2Caps%2C163&sr=8-1&swrs=5BE13FDC6143FDCE469FA1B2FF1B6427', image_url: 'https://m.media-amazon.com/images/M/MV5BNGEwMDU2ZDQtZmE5Zi00YjFiLWIwYWItOGMyMzY5MzljOWU3XkEyXkFqcGdeQXVyODk2NDQ3MTA@._V1_UY268_CR1,0,182,268_AL_.jpg')
event.category = Category.find_by_name('Filme')
event.save

event = Event.create(name: "The King's Man", description: "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.", amazon_link: 'link', image_url: 'https://m.media-amazon.com/images/M/MV5BYTQwNTgxOWUtMjRhYy00N2IyLWJlNzEtOWZkNGY2NWNjYjc2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg')
event.category = Category.find_by_name('Filme')
event.save

event = Event.create(name: '1917', description: "April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.", amazon_link: 'https://www.amazon.de/1917-George-MacKay/dp/B083S9JV8W/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=1917&qid=1584638696&sr=8-3&swrs=0008EFF1D3B3284F12ADA1E8FB722A96', image_url: 'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_UX182_CR0,0,182,268_AL_.jpg')
event.category = Category.find_by_name('Filme')
event.save

event = Event.create(name: "Once Upon a Time in Hollywood", description: "A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood's Golden Age in 1969 Los Angeles.", amazon_link: 'https://www.amazon.de/Once-Upon-Time-Hollywood-dt/dp/B07WGQPLSC/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=once+upon+a+time+in+hollywood&qid=1584638751&sr=8-3', image_url: 'https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_UY209_CR0,0,140,209_AL_.jpg')
event.category = Category.find_by_name('Filme')
event.save

event = Event.create(name: "Ad Astra: Zu den Sternen", description: "Astronaut Roy McBride undertakes a mission across an unforgiving solar system to uncover the truth about his missing father and his doomed expedition that now, 30 years later, threatens the universe.", amazon_link: 'https://www.amazon.de/Ad-Astra-den-Sternen-dt/dp/B082TTDWHK/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=ad+astra&qid=1584638813&sr=8-3', image_url: 'https://m.media-amazon.com/images/M/MV5BZTllZTdlOGEtZTBmMi00MGQ5LWFjN2MtOGEyZTliNGY1MzFiXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX182_CR0,0,182,268_AL_.jpg')
event.category = Category.find_by_name('Filme')
event.save

event = Event.create(name: "Knives Out - Mord ist Familiensache", description: "A detective investigates the death of a patriarch of an eccentric, combative family.", amazon_link: 'https://www.amazon.de/Knives-Out-Mord-ist-Familiensache/dp/B082XFVQQK/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=knives+out&qid=1584638871&sr=8-3', image_url: 'https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_UY209_CR0,0,140,209_AL_.jpg')
event.category = Category.find_by_name('Filme')
event.save



puts "done in #{Time.now - start} seconds"
