class DestinationModel {
  String name;
  String country;
  String category;
  String description;
  String imageAsset;

  DestinationModel({
    required this.name,
    required this.country,
    required this.category,
    required this.description,
    required this.imageAsset
  });
}

List<DestinationModel> destinationList = [
  DestinationModel(
    name: 'Patagonia',
    country: 'Argentina',
    category: 'Nature',
    description: 'Patagonia\'s rugged landscapes are a haven for outdoor enthusiasts seeking unparalleled beauty. With its soaring peaks, dazzling glaciers, and pristine lakes, this remote region beckons adventurers. Patagonia offers breathtaking hiking trails, wildlife encounters, and the opportunity to witness the awe-inspiring Perito Moreno Glacier. Immerse yourself in the solitude and grandeur of this untouched wilderness.',
    imageAsset: 'images/destination/Patagonia.webp'
  ),
  DestinationModel(
      name: 'Cancum',
      country: 'Mexico',
      category: 'Nature',
      description: 'Cancun has long been celebrated for its breathtaking turquoise waters, pristine beaches, and vibrant nightlife. With a perfect blend of relaxation and adventure, this Mexican gem entices travelers from all walks of life. From exploring ancient Mayan ruins in Tulum to indulging in world-class diving and snorkeling in the Great Maya Reef, Cancun promises unforgettable experiences at every turn.',
      imageAsset: 'images/destination/Cancun.webp'
  ),
  DestinationModel(
      name: 'Kyoto',
      country: 'Japan',
      category: 'Cultural',
      description: 'Steeped in tradition and brimming with cultural treasures, Kyoto entices visitors with its historic temples, serene gardens, and mesmerizing geisha districts. Explore the enchanting Arashiyama Bamboo Grove, marvel at the golden splendor of Kinkaku-ji Temple, and partake in a traditional tea ceremony. Kyoto\'s timeless allure and harmonious blend of old and new make it a must-visit destination for those seeking an authentic Japanese experience.',
      imageAsset: 'images/destination/Kyoto.webp'
  ),
  DestinationModel(
      name: 'Santorini',
      country: 'Greece',
      category: 'Cultural',
      description: 'Santorini\'s iconic white-washed buildings, blue-domed churches, and breathtaking sunsets have made it a dream destination for many. Explore the charming villages of Oia and Fira, sample local delicacies and wines, and soak up the Mediterranean sun on the island\'s unique volcanic beaches. Whether you\'re savoring a romantic getaway or seeking a picturesque retreat, Santorini\'s allure and undeniable beauty will leave an indelible mark on your bucket list.',
      imageAsset: 'images/destination/Santorini.webp'
  ),
  DestinationModel(
      name: 'Peru',
      country: 'Peru',
      category: 'Cultural',
      description: 'Peru, a land of ancient civilizations and breathtaking landscapes, enthralls visitors with its mystical allure. Explore the awe-inspiring Machu Picchu, hike through the stunning Sacred Valley, and sail on the tranquil waters of Lake Titicaca. Peru\'s rich Incan heritage, vibrant indigenous cultures, and world-renowned cuisine, including ceviche and pisco sour, make it a cultural haven. From the bustling streets of Lima to the remote corners of the Amazon rainforest, Peru offers a diverse and enchanting experience that will ignite your sense of adventure.',
      imageAsset: 'images/destination/Peru.webp'
  ),
  DestinationModel(
      name: 'Lisbon',
      country: 'Portugal',
      category: 'City/Country',
      description: 'Lisbon, the vibrant capital of Portugal, has recently captured the attention of globetrotters seeking a unique European adventure. Its enchanting blend of history, culture, and culinary delights make it an irresistible destination. From strolling through the charming streets of Alfama to savoring delectable pastéis de nata (custard tarts) in the historic district of Belém, Lisbon captivates visitors with its old-world charm and warm hospitality.',
      imageAsset: 'images/destination/Lisbon.webp'
  ),
  DestinationModel(
      name: 'Bali',
      country: 'Indonesia',
      category: 'Cultural',
      description: 'Bali\'s allure as a bucket list destination remains unwavering, attracting travelers with its breathtaking landscapes, rich cultural heritage, and spiritual retreats. With lush rice terraces in Ubud, stunning beaches in Seminyak, and sacred temples in Uluwatu, Bali offers a magical escape. Immerse yourself in traditional Balinese rituals, sample delectable cuisine, and embrace the island\'s serene atmosphere for a transformative experience.',
      imageAsset: 'images/destination/Bali.webp'
  ),
  DestinationModel(
      name: 'Ho Chi Minh City',
      country: 'Vietnam',
      category: 'City/Country',
      description: 'Ho Chi Minh City, formerly known as Saigon, is a vibrant and bustling metropolis that offers a captivating blend of history, culture, and gastronomy. From exploring the Cu Chi Tunnels to sampling delectable street food at the famous Ben Thanh Market, this city never fails to leave a lasting impression. Ho Chi Minh City\'s energy and charm, coupled with its fascinating history, make it an ideal destination for those seeking an immersive cultural experience.',
      imageAsset: 'images/destination/HCM.webp'
  ),
  DestinationModel(
      name: 'Puerto Rico',
      country: 'Puerto Rico',
      category: 'Nature',
      description: 'As an enchanting Caribbean gem, Puerto Rico promises a tropical paradise filled with pristine beaches, lush rainforests, and vibrant culture. Discover the colonial charm of Old San Juan, hike through El Yunque National Forest, and bask in the sun on Flamenco Beach in Culebra. Puerto Rico\'s unique blend of Spanish, African, and Taíno influences creates a vibrant atmosphere and a diverse culinary scene. With warm hospitality and breathtaking natural beauty, Puerto Rico is a bucket list destination that offers a true taste of the Caribbean.',
      imageAsset: 'images/destination/Puerto.webp'
  ),
  DestinationModel(
      name: 'Taipei',
      country: 'Taiwan',
      category: 'City/Country',
      description: 'Taipei, the dynamic capital of Taiwan, has gained popularity as a must-visit destination for 2023. This bustling metropolis seamlessly blends ancient traditions with modern advancements, offering a truly unique experience. Explore historic sites such as the Longshan Temple, indulge in night market food tours, and marvel at the iconic Taipei 101 skyscraper. Taipei\'s charm lies in its ability to surprise and captivate travelers with its vibrant street life and mouth watering culinary scene.',
      imageAsset: 'images/destination/Taipei.webp'
  ),
  DestinationModel(
      name: 'Zanzibar',
      country: 'Tanzania',
      category: 'Nature',
      description: 'Zanzibar, with its idyllic beaches and rich cultural heritage, offers a tropical paradise steeped in history. Explore the labyrinthine streets of Stone Town, a UNESCO World Heritage Site, and visit the spice farms that have shaped the island\'s identity. Dive into the crystal-clear waters of Mnemba Atoll, renowned for its vibrant coral reefs. Zanzibar\'s fusion of African, Arab, and European influences makes it a truly exotic escape.',
      imageAsset: 'images/destination/Zanzibar.webp'
  ),
  DestinationModel(
      name: 'Venice',
      country: 'Italy',
      category: 'City/Country',
      description: 'Known as the "Floating City," Venice has long been a favorite destination for travelers seeking romance and timeless beauty. Renowned for its intricate network of canals and captivating architecture, Venice offers a dreamlike experience. Explore the enchanting alleys, take a gondola ride along the Grand Canal, and visit iconic landmarks like St. Mark\'s Square and the Rialto Bridge. Venice\'s allure lies in its ability to transport visitors to a bygone era of elegance and splendor.',
      imageAsset: 'images/destination/Venice.webp'
  ),
  DestinationModel(
      name: 'Istanbul',
      country: 'Turkey',
      category: 'City/Country',
      description: 'Istanbul, the mesmerizing gateway between Europe and Asia, beckons travelers with its rich history and vibrant energy. Explore iconic landmarks such as the Hagia Sophia and the Blue Mosque, navigate the bustling Grand Bazaar, and cruise along the Bosphorus Strait. Immerse yourself in the city\'s colorful markets, indulge in flavorful Turkish cuisine, and experience traditional Turkish baths. Istanbul\'s unique blend of ancient traditions and modern delights makes it a captivating bucket list destination.',
      imageAsset: 'images/destination/Istanbul.webp'
  ),
  DestinationModel(
      name: 'Galapagos Islands',
      country: 'Ecuador',
      category: 'Nature',
      description: 'The Galapagos Islands boast an astonishing array of unique wildlife and unparalleled natural beauty. Observe giant tortoises, marine iguanas, and blue-footed boobies up close. Snorkel with sea lions and spot elusive whale sharks. These isolated islands offer a once-in-a-lifetime opportunity to witness the delicate balance of life and evolution in a protected ecosystem.',
      imageAsset: 'images/destination/Galapagos.webp'
  ),
  DestinationModel(
      name: 'Marrakech',
      country: 'Marocco',
      category: 'City/Country',
      description: 'With its vibrant souks, aromatic spice markets, and mesmerizing architecture, Marrakech is a sensory feast for travelers. Lose yourself in the labyrinthine streets of the medina, visit the opulent Bahia Palace, and marvel at the vibrant displays in Jardin Majorelle. Indulge in traditional Moroccan cuisine and soak up the vibrant atmosphere of the Djemaa el-Fna square. Marrakech\'s cultural richness and exotic allure make it an irresistible destination.',
      imageAsset: 'images/destination/Marrakech.webp'
  ),
  DestinationModel(
      name: 'Vancouver Island',
      country: 'Canada',
      category: 'Nature',
      description: 'Vancouver Island offers an abundance of natural wonders, from towering forests to rugged coastlines. Explore the picturesque Butchart Gardens, hike through Pacific Rim National Park, or embark on a whale-watching excursion. Immerse yourself in the island\'s laid-back vibe and indulge in farm-to-table cuisine in Victoria, the charming provincial capital. Vancouver Island\'s stunning landscapes and outdoor activities make it a dream destination for nature enthusiasts.',
      imageAsset: 'images/destination/Vancouver.webp'
  ),
  DestinationModel(
      name: 'Edinburgh',
      country: 'Scotland',
      category: 'City/Country',
      description: 'Nestled amidst dramatic hills and overlooking the stunning Firth of Forth, Edinburgh is a city steeped in history and brimming with charm. Its cobblestone streets wind through centuries-old architecture, leading visitors to landmarks like Edinburgh Castle and the Royal Mile. Immerse yourself in the city’s rich literary legacy at the Edinburgh International Book Festival or witness the electrifying atmosphere of the Edinburgh Festival Fringe. From exploring the eerie depths of the underground vaults to savoring a dram of Scotch whisky in a cozy pub, Edinburgh offers an enchanting experience that transports you to a bygone era.',
      imageAsset: 'images/destination/Edinburgh.webp'
  ),
  DestinationModel(
      name: 'Bhutan',
      country: 'Bhutan',
      category: 'Cultural',
      description: 'Nestled in the heart of the Himalayas, Bhutan remains an enchanting kingdom of traditions and natural beauty. Discover ancient monasteries, hike to the iconic Tiger\'s Nest, and experience the joyous celebration of a traditional festival. Bhutan\'s commitment to Gross National Happiness and preserving its landscapes and serene Buddhist way of life make it a must-visit destination for those seeking a spiritual recharge and cultural immersion.',
      imageAsset: 'images/destination/Bhutan.webp'
  ),
  DestinationModel(
      name: 'Cape Town',
      country: 'South Africa',
      category: 'City/Country',
      description: 'Cape Town is a vibrant cosmopolitan city with plenty of diverse natural landscapes on its doorstep. You can ascend Table Mountain for awesome views, explore the cool neighborhoods of Bo-Kaap and Woodstock, and head to the beach, all in a day. The other musts among Cape Town\'s rich tapestry of experiences? Visit the iconic Cape of Good Hope, sip your way around the renowned wine estates, and embark on a safari to spot the Big Five.',
      imageAsset: 'images/destination/Cape.webp'
  ),
  DestinationModel(
      name: 'Queenstown',
      country: 'New Zealand',
      category: 'Nature',
      description: 'Amidst New Zealand\'s Southern Alps, Queenstown is a perfect destination for adventure seekers. Bungee jumping, jet boating, rock climbing — adrenaline is always on hand. Its landscapes have to be seen to be believed, especially the beautiful Lake Wakatipu and the Remarkables, a mountain range that runs perfectly north to south. After a few hours in Queenstown, it will all become clear why it’s earned a reputation as the adventure capital of the world.',
      imageAsset: 'images/destination/Queenstown.webp'
  )
];