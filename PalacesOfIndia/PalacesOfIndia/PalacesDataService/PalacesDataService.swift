//
//  PalacesData.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 17/04/26.
//

import Foundation
import MapKit

class PalacesDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Laxmi Vilas Palace",
            cityName: "Vadodara",
            coordinates: CLLocationCoordinate2D(latitude: 22.2939, longitude: 73.1914),
            description: "The Lukshmi Vilas Palace (Gujarati: લક્ષ્મી વિલાસ મહેલ) in Vadodara, Gujarat, India, was designed and constructed in 1890 by the British architect Charles Mant for the Gaekwad family, a prominent Maratha family, who ruled the Baroda State. Lakshmi Vilas Palace was styled on the Indo-Saracenic Revival architecture, built by Maharaja Sayajirao Gaekwad III in 1890 at a cost of £6,383,155 (₹765,000,000) reflects Sayajirao's vision of blending Indian tradition with European modernity.",
            imageNames: [
                "LaxmiVilasPalace-1",
                "LaxmiVilasPalace-2",
                "LaxmiVilasPalace-3",
            ],
            link: "https://en.wikipedia.org/wiki/Lakshmi_Vilas_Palace,_Vadodara"),
        Location(
            name: "Aina Mahal",
            cityName: "Darbargadh",
            coordinates: CLLocationCoordinate2D(latitude: 23.25530, longitude: 69.66877),
            description: "The Aina Mahal (lit. 'Palace of Mirrors')[1] is an 18th-century palace that is located next to the Prag Mahal in Darbargadh, Bhuj, Kutch, Gujarat, India. The palace was built by Rao Lakhpatji of Kutch State around 1750. Lakhpatji's master craftsman Ram Singh Malam designed the palace in the local style and decorated it in the European style with glass, mirrors and tiles. The palace had two floors; the first floor has the Audience Hall, the Pleasure Hall, the Hall of Mirrors and the State Apartments, and the second floor has the antechamber, Darbar (Court) Hall and Marriage Hall. The building has been converted into a museum which includes a \"europeanerie\" collection that includes clocks, wares, mechanical toys, paintings and pictures.",
            imageNames: [
                "AinaMahal-1",
                "AinaMahal-2",
                "AinaMahal-3",
            ],
            link: "https://en.wikipedia.org/wiki/Aina_Mahal"),
        
        Location(
            name: "Vijaya Vilas Palace",
            cityName: "Mandavi",
            coordinates: CLLocationCoordinate2D(latitude: 22.834351, longitude: 69.28484),
            description: "Vijaya Vilas Palace is a summer palace of Maharao of Kutch located on the beach of Mandvi in Kutch, Gujarat, India. The palace was built during the reign of Khengarji III as a summer resort for his son and heir to the kingdom, the Yuvraj Shri Vijayaraji, for whom it was named. Construction started in 1920[3] and was completed in 1929",
            imageNames: [
                "VijayaVilasPalace-1",
                "VijayaVilasPalace-2",
                "VijayaVilasPalace-3",
                "VijayaVilasPalace-4",
            ],
            link: "https://en.wikipedia.org/wiki/Vijaya_Vilas_Palace"),
        
        Location(
            name: "Prag Mahal",
            cityName: "Kutch",
            coordinates: CLLocationCoordinate2D(latitude: 23.25479, longitude: 69.66833),
            description: "Prag Mahal is named after Rao Pragmalji II, who commissioned it and construction began in 1865. It was designed by Colonel Henry St Clair Wilkins in what the local tourist office describes as the Italian Gothic style, although it would be better described as a Romanesque architecture twist on the Indo-Saracenic Revival style, and many Italian artisans were involved in its construction.[2] The palace artisans' wages were paid in gold coins. Construction of the palace, which ultimately cost 3.1 million rupees, was completed in 1879 during the regency of Khengarji III (Pragmalji II's son) following Pragmalji II's death in 1875. The local Kutchi builder community (Mistris of Kutch) were also involved in construction of Prag Mahal along with Colonel Wilkins.",
            imageNames: [
                "PragMahal-1",
                "PragMahal-2",
                "PragMahal-3",
                "PragMahal-4",
            ],
            link: "https://en.wikipedia.org/wiki/Prag_Mahal"),
        
        Location(
            name: "Kareng Ghar",
            cityName: "Sivasagar",
            coordinates: CLLocationCoordinate2D(latitude: 26.93660, longitude: 94.74520),
            description: "Kareng (Assamese: [kɑ:ɹɛŋ ˈgɑ:], \"royal palace\"), also known as The Garhgaon Palace, is located in Garhgaon 15 kilometres (9.3 mi) from Sivasagar, Assam, India.[1] The palace structures were made of wood and stone. In 1751 Sunenphaa, son of Sukhrungphaa, constructed the brick wall of about 5 kilometres (3.1 mi) in length surrounding the Garhgaon Palace and the masonry gate leading to it. After the destruction of the old palace it was rebuilt around 1752 as the present seven-storied structure by Suremphaa (1751–1769).",
            imageNames: [
                "KarengGhar-1",
                "KarengGhar-2"
            ],
            link: "https://en.wikipedia.org/wiki/Kareng_Ghar"),
        
        Location(
            name: "Talatal Ghar",
            cityName: "Sivasagar",
            coordinates: CLLocationCoordinate2D(latitude: 26.96630, longitude: 94.6246),
            description: "The Talatal Ghar [tɔlatɔl ɡʱɔɹ]) is an 18th-century palace and military base located in Rangpur, 4 kilometres (2.5 mi) from present-day Sivasagar, Assam, India. It is the largest of the monument built during the Ahom era. King Rudra Singha was responsible for the construction of Kareng Ghar, but the present structure was built by king Rajeswar Singha (Surempha). It was initially built as an army base. It had 2 tunnels and 3 underground floors. Currently this structure is in dilapidated condition, the present ruins betray the grandeur that the palace was once endowed with.",
            imageNames: [
                "TalatalGhar-1"
            ],
            link: "https://en.wikipedia.org/wiki/Talatal_Ghar"),
        
        Location(
            name: "Matiabag Palace",
            cityName: "Gauripur",
            coordinates: CLLocationCoordinate2D(latitude: 26.5, longitude: 89.58),
            description: "Matiabag Rajbari or Matiabag Palace is located in Gauripur in Dhubri district of Assam.[1] The palace was built by Raja Prabhat Chandra Barua of the Gauripur royal family on a small hill-top at Matiabagh, Gauripur on the banks of the Gadadhar river. It was the royal guest house and summer residence (Hawakhana) by the royal family of Gauripur, also known as ‘Rangamati Baruas.[2] The construction of the palace began in 1904 and was completed by 1914. The palace was built by Chinese carpenters from China Town in Kolkata at a cost of ₹ 340000, the palace features elements of Hindu, Mughal and British architecture.",
            imageNames: [
                "Matiabag-1"
            ],
            link: "https://en.wikipedia.org/wiki/Matiabag_Palace"),
        
        Location(
            name: "Raj Mahal, Chandragiri",
            cityName: "Tirupati",
            coordinates: CLLocationCoordinate2D(latitude: 13.5825, longitude: 79.305556),
            description: "Chandragiri Fort is a historical fort located in the Chandragiri near Tirupati, in Tirupati district of Andhra Pradesh, India. The fort, with its rectangular bastions and steep moat, was built during the reign of Immadi Narasimha Yadavaraya (1000 AD), who ruled from Narayanavanam. It is mostly associated with the Vijayanagara Emperors. Kapilendra Deva captured it in 1460 CE.",
            imageNames: [
                "RajMahalChandragiri-1",
                "RajMahalChandragiri-2",
                "RajMahalChandragiri-3",
            ],
            link: "https://en.wikipedia.org/wiki/Chandragiri_Fort,_Andhra_Pradesh"),
        
        Location(
            name: "Punganur Palace",
            cityName: "Chittoor",
            coordinates: CLLocationCoordinate2D(latitude: 13.3676, longitude: 78.8556),
            description: "Punganur (also known as Poonganur, Punuguru and Punganuru) was a prominent Zamindari estate in the town of the same name, Andhra Pradesh, India. It was established by the Morasu Vokkaliga chieftain Timme Gowda.",
            imageNames:["PunganurPalace-1"],
            link: "https://en.wikipedia.org/wiki/Punganur_Estate#Palace"
        ),
        
        Location(
            name: "Hawa Mahal",
            cityName: "Visakhapatnam - Visakhapatnam",
            coordinates: CLLocationCoordinate2D(latitude:  17.707458, longitude: 83.311838),
            description: " Hawa Mahal meaning 'palace of winds' is a summer residential palace of the royal family of Jeypore. It was built in 1917-1923 by Maharaja Ram Chandra Dev IV at Beach Road, Visakhapatnam.[1] It is considered one of the most iconic historical buildings of the city.[2] It is owned by the Maharaja of Jeypore.",
            imageNames: ["HawaMahalVisakhapatnam-1"],
            link : "https://en.wikipedia.org/wiki/Hawa_Mahal,_Visakhapatnam"
        )
    ]
}
 

