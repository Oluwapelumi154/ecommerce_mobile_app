import 'package:ecommerce_mobile_app/core/constants/asset_constants.dart';
import 'package:ecommerce_mobile_app/features/home/data/models/product.dart';

final List<Product> products = [
  Product(
    id: 7,
    image: AssetConstants.unsplash1,
    price: 2000,
    title: "Classic Leather Ankle Boots",
    description:
        "Elevate your style with these versatile ankle boots. Crafted from premium leather with a modern silhouette, they're perfect for both casual and semi-formal occasions. The cushioned insole provides all-day comfort.",
    rating: 10,
    slashPrice: 2500,
    categoryId: "4",
    reviews: [
      {
        "user": "Michael Chen",
        "rating": 5,
        "comment":
            "Excellent quality leather. Very comfortable for all-day wear.",
      },
      {
        "user": "Sarah Johnson",
        "rating": 4,
        "comment": "Great boots, runs slightly large. Order half size down.",
      },
    ],
  ),
  Product(
    id: 8,
    image: AssetConstants.unsplash2,
    price: 2000,
    title: "Air Force 1 Low White",
    description:
        "The iconic Nike Air Force 1 in classic white. This timeless sneaker features premium leather construction, Air-Sole cushioning, and a durable rubber outsole. A must-have staple for any sneaker collection.",
    rating: 10,
    slashPrice: 2800,
    categoryId: "3",
    reviews: [
      {
        "user": "James Wilson",
        "rating": 5,
        "comment": "Classic sneaker that never goes out of style. Perfect fit!",
      },
      {
        "user": "Emma Davis",
        "rating": 5,
        "comment": "Love these! So comfortable and goes with everything.",
      },
      {
        "user": "Carlos Rodriguez",
        "rating": 4,
        "comment": "Great shoe but needs breaking in for a few days.",
      },
    ],
  ),
  Product(
    id: 9,
    image: AssetConstants.unsplash3,
    price: 2000,
    title: "Converse All Stars High Top",
    description:
        "Classic canvas high-top sneakers that never go out of style. Featuring the signature Chuck Taylor design, vulcanized rubber sole, and breathable canvas upper. Perfect for everyday casual wear.",
    rating: 10,
    categoryId: "3",
    slashPrice: 2300,
    reviews: [
      {
        "user": "Alex Thompson",
        "rating": 5,
        "comment": "Timeless design. Been wearing Chucks for years!",
      },
      {
        "user": "Lily Martinez",
        "rating": 4,
        "comment": "Love the style but wish they had more arch support.",
      },
    ],
  ),
  Product(
    id: 10,
    image: AssetConstants.unsplash4,
    price: 2000,
    title: "Air Force 1 Shadow Pastel",
    description:
        "Stand out with the Air Force 1 Shadow featuring layered design elements and pastel color blocking. This modern twist on the classic silhouette offers enhanced style and comfort with double swooshes and stacked midsole.",
    rating: 10,
    slashPrice: 3200,
    categoryId: "3",
    reviews: [
      {
        "user": "Sophia Lee",
        "rating": 5,
        "comment": "The colors are even prettier in person! Highly recommend.",
      },
      {
        "user": "Olivia Brown",
        "rating": 5,
        "comment": "Unique design, gets tons of compliments everywhere I go.",
      },
    ],
  ),
  Product(
    id: 11,
    image: AssetConstants.unsplash5,
    price: 2000,
    title: "Converse Chuck Taylor Low",
    description:
        "The legendary Chuck Taylor All Star in a low-top design. Features durable canvas construction, iconic star ankle patch, and timeless style that pairs perfectly with any casual outfit.",
    rating: 10,
    slashPrice: 2200,
    categoryId: "3",
    reviews: [
      {
        "user": "Ryan Kim",
        "rating": 4,
        "comment": "Great everyday shoe. Simple and versatile.",
      },
      {
        "user": "Maya Patel",
        "rating": 5,
        "comment": "Perfect for summer. Light and breathable.",
      },
    ],
  ),
  Product(
    id: 12,
    image: AssetConstants.unsplash6,
    price: 2000,
    title: "Air Force 1 '07 Triple Black",
    description:
        "Sleek all-black Air Force 1s for a bold, monochromatic look. Premium leather upper with perforated toe box for breathability, foam midsole for lightweight cushioning, and classic hoops-inspired design.",
    rating: 10,
    slashPrice: 2900,
    categoryId: "3",
    reviews: [
      {
        "user": "David Anderson",
        "rating": 5,
        "comment": "Clean look, goes with everything. Worth every penny.",
      },
      {
        "user": "Isabella Garcia",
        "rating": 5,
        "comment": "My favorite AF1s. The all-black is so sleek.",
      },
      {
        "user": "Noah White",
        "rating": 4,
        "comment":
            "Great quality but shows dust easily. Keep cleaning wipes handy!",
      },
    ],
  ),
  Product(
    id: 13,
    image: AssetConstants.unsplash7,
    price: 2000,
    title: "Executive Oxford Dress Shoes",
    description:
        "Professional oxford dress shoes crafted for the modern executive. Made with genuine leather, featuring a sleek silhouette and cushioned footbed. Perfect for business meetings, formal events, and office wear.",
    rating: 10,
    slashPrice: 3500,
    categoryId: "4",
    reviews: [
      {
        "user": "Robert Taylor",
        "rating": 5,
        "comment": "Excellent craftsmanship. Perfect for the office.",
      },
      {
        "user": "William Harris",
        "rating": 4,
        "comment": "Very comfortable after break-in period. Professional look.",
      },
    ],
  ),
  Product(
    id: 14,
    image: AssetConstants.unsplash8,
    price: 2000,
    title: "Air Force 1 React White/Gum",
    description:
        "Experience next-level comfort with React cushioning technology in this Air Force 1. Clean white leather upper with gum rubber outsole creates a fresh, modern aesthetic while delivering responsive comfort.",
    rating: 10,
    slashPrice: 3100,
    categoryId: "3",
    reviews: [
      {
        "user": "Ethan Moore",
        "rating": 5,
        "comment": "The React cushioning is game-changing. So comfortable!",
      },
      {
        "user": "Ava Martinez",
        "rating": 5,
        "comment": "Love the gum sole. Gives it a premium look.",
      },
    ],
  ),
  Product(
    id: 15,
    image: AssetConstants.unsplash9,
    price: 2000,
    title: "Air Force 1 Mid Wheat",
    description:
        "Rugged mid-top Air Force 1 in premium wheat-colored leather. Enhanced ankle support, padded collar, and durable construction make these perfect for cooler weather while maintaining classic AF1 style.",
    rating: 10,
    slashPrice: 3300,
    categoryId: "3",
    reviews: [
      {
        "user": "Lucas Jackson",
        "rating": 5,
        "comment": "Perfect for fall/winter. Great ankle support.",
      },
      {
        "user": "Mia Thompson",
        "rating": 4,
        "comment": "Love the color! Runs slightly narrow though.",
      },
    ],
  ),
  Product(
    id: 16,
    image: AssetConstants.unsplash10,
    price: 2000,
    title: "Air Force 1 Low University Blue",
    description:
        "Fresh university blue colorway brings vibrant energy to the classic Air Force 1. Premium leather construction with Air cushioning and pivot point outsole for smooth transitions and lasting comfort.",
    rating: 10,
    slashPrice: 2700,
    categoryId: "3",
    reviews: [
      {
        "user": "Harper Wilson",
        "rating": 5,
        "comment": "The blue is stunning! Perfect spring/summer shoe.",
      },
      {
        "user": "Benjamin Clark",
        "rating": 5,
        "comment": "Vibrant color, great quality. Very happy with purchase.",
      },
    ],
  ),
  Product(
    id: 17,
    image: AssetConstants.unsplash11,
    price: 2000,
    title: "Premium Leather Loafers",
    description:
        "Sophisticated slip-on loafers in rich leather. Perfect for business casual settings, these shoes combine elegance with comfort. Features cushioned insole, flexible sole, and timeless design for versatile styling.",
    rating: 10,
    categoryId: "4",
    slashPrice: 3200,
    reviews: [
      {
        "user": "Christopher Lewis",
        "rating": 5,
        "comment": "Comfortable from day one. No break-in needed.",
      },
      {
        "user": "Amelia Robinson",
        "rating": 4,
        "comment": "Great quality leather. Wish they came in more colors.",
      },
    ],
  ),
  Product(
    id: 18,
    image: AssetConstants.unsplash12,
    price: 2000,
    title: "Rugged Hiking Boots",
    description:
        "Built for adventure, these hiking boots feature waterproof construction, aggressive tread pattern, and ankle support. Durable leather and textile upper with cushioned midsole for all-day trail comfort.",
    rating: 10,
    slashPrice: 3800,
    categoryId: "2",
    reviews: [
      {
        "user": "Mason Walker",
        "rating": 5,
        "comment": "Took these on a 3-day hike. No blisters, great traction!",
      },
      {
        "user": "Ella Hall",
        "rating": 5,
        "comment":
            "Waterproof works perfectly. Kept my feet dry in heavy rain.",
      },
      {
        "user": "Logan Allen",
        "rating": 4,
        "comment": "Solid boots but heavy. Great for serious hiking.",
      },
    ],
  ),
  Product(
    id: 19,
    image: AssetConstants.unsplash13,
    price: 2000,
    title: "Air Force 1 Craft White/Sail",
    description:
        "Artisan-inspired Air Force 1 with premium materials and deconstructed details. Features soft leather, exposed foam, and vintage aesthetics for a unique take on the basketball icon.",
    rating: 10,
    slashPrice: 3400,
    categoryId: "3",
    reviews: [
      {
        "user": "Aiden Young",
        "rating": 5,
        "comment": "The deconstructed look is fire! Super unique.",
      },
      {
        "user": "Charlotte King",
        "rating": 5,
        "comment": "Premium materials, worth the price. Love the vintage vibe.",
      },
    ],
  ),
  Product(
    id: 20,
    image: AssetConstants.unsplash14,
    price: 2000,
    title: "Air Force 1 Low Black/White",
    description:
        "Classic two-tone Air Force 1 combining black and white for timeless appeal. Durable leather construction, padded low-cut collar, and Air-Sole cushioning provide the perfect blend of style and performance.",
    rating: 10,
    slashPrice: 2600,
    categoryId: "3",
    reviews: [
      {
        "user": "Jackson Wright",
        "rating": 5,
        "comment": "Can't go wrong with this colorway. Classic!",
      },
      {
        "user": "Aria Scott",
        "rating": 4,
        "comment": "Great shoe but white parts get dirty quickly.",
      },
    ],
  ),
  Product(
    id: 21,
    image: AssetConstants.unsplash15,
    price: 2000,
    title: "Air Force 1 Low Custom",
    description:
        "Express yourself with this custom Air Force 1 featuring unique colorways and materials. Handcrafted details and premium construction make each pair one-of-a-kind while maintaining legendary AF1 comfort.",
    rating: 10,
    slashPrice: 4000,
    categoryId: "3",
    reviews: [
      {
        "user": "Gabriel Green",
        "rating": 5,
        "comment": "Custom work is incredible. Truly one of a kind!",
      },
      {
        "user": "Scarlett Adams",
        "rating": 5,
        "comment": "Worth every penny. The attention to detail is amazing.",
      },
    ],
  ),
  Product(
    id: 22,
    image: AssetConstants.unsplash16,
    price: 2000,
    title: "Air Force 1 Low Grey Fog",
    description:
        "Subtle grey fog colorway brings understated elegance to the Air Force 1. Premium suede and leather construction with tonal swoosh creates a sophisticated look for any occasion.",
    rating: 10,
    slashPrice: 3000,
    categoryId: "3",
    reviews: [
      {
        "user": "Henry Baker",
        "rating": 5,
        "comment": "The suede quality is top-notch. Very sophisticated.",
      },
      {
        "user": "Victoria Nelson",
        "rating": 4,
        "comment": "Beautiful color. Suede requires more maintenance though.",
      },
    ],
  ),
  Product(
    id: 23,
    image: AssetConstants.unsplash17,
    price: 2000,
    title: "Air Force 1 Pixel White",
    description:
        "Reimagined Air Force 1 with pixelated design elements and distorted details. Features deconstructed swoosh, unique midsole pattern, and modern aesthetic while honoring the classic silhouette.",
    rating: 10,
    slashPrice: 3300,
    categoryId: "3",
    reviews: [
      {
        "user": "Elijah Carter",
        "rating": 5,
        "comment": "The pixel design is so creative. Love the modern twist!",
      },
      {
        "user": "Penelope Mitchell",
        "rating": 5,
        "comment": "Unique and comfortable. Gets lots of attention!",
      },
    ],
  ),
  Product(
    id: 24,
    image: AssetConstants.unsplash18,
    price: 2000,
    title: "Air Force 1 Low Lemon Drop",
    description:
        "Bright and bold lemon drop colorway adds a pop of color to your rotation. Premium leather with vibrant yellow accents, classic Air cushioning, and durable rubber outsole for all-day wear.",
    rating: 10,
    slashPrice: 2800,
    categoryId: "3",
    reviews: [
      {
        "user": "Sebastian Perez",
        "rating": 5,
        "comment": "Love the bold color! Perfect for standing out.",
      },
      {
        "user": "Layla Roberts",
        "rating": 4,
        "comment": "Great summer shoe. Color is even brighter in person!",
      },
    ],
  ),
  Product(
    id: 25,
    image: AssetConstants.unsplash19,
    price: 2000,
    title: "Air Force 1 '07 LV8 Utility",
    description:
        "Utility-inspired Air Force 1 with rugged details and functional design. Features reinforced construction, adjustable straps, and weather-resistant materials for durability without sacrificing street style.",
    rating: 10,
    slashPrice: 3500,
    categoryId: "3",
    reviews: [
      {
        "user": "Daniel Turner",
        "rating": 5,
        "comment":
            "The utility straps are functional and stylish. Great build quality.",
      },
      {
        "user": "Chloe Phillips",
        "rating": 5,
        "comment": "Love the rugged look. Very versatile shoe.",
      },
    ],
  ),
  Product(
    id: 26,
    image: AssetConstants.unsplash20,
    price: 2000,
    title: "Air Force 1 Low Rose Gold",
    description:
        "Elegant rose gold metallic finish elevates the classic Air Force 1. Premium leather construction with shimmering accents creates a luxe look perfect for making a statement.",
    rating: 10,
    slashPrice: 3600,
    categoryId: "3",
    reviews: [
      {
        "user": "Grace Campbell",
        "rating": 5,
        "comment": "Absolutely gorgeous! The metallic finish is stunning.",
      },
      {
        "user": "Samuel Parker",
        "rating": 4,
        "comment": "Beautiful shoe but shows scuffs more than regular leather.",
      },
    ],
  ),
  Product(
    id: 27,
    image: AssetConstants.unsplash21,
    price: 2000,
    title: "Air Force 1 Type Summit White",
    description:
        "Deconstructed design meets minimalist aesthetics in the Air Force 1 Type. Features exposed stitching, simplified panels, and modern materials for a fresh take on the iconic basketball shoe.",
    rating: 10,
    slashPrice: 3200,
    categoryId: "3",
    reviews: [
      {
        "user": "Matthew Evans",
        "rating": 5,
        "comment":
            "The minimalist design is perfect. Love the exposed stitching.",
      },
      {
        "user": "Zoe Edwards",
        "rating": 5,
        "comment": "Modern and clean. Great quality construction.",
      },
    ],
  ),
  Product(
    id: 28,
    image: AssetConstants.unsplash22,
    price: 2000,
    title: "Air Force 1 Low Valentine's Day",
    description:
        "Celebrate love with this special edition Valentine's Day Air Force 1. Features romantic colorway, premium materials, and limited edition details perfect for showing your passion for sneakers.",
    rating: 10,
    slashPrice: 3700,
    categoryId: "3",
    reviews: [
      {
        "user": "Evelyn Collins",
        "rating": 5,
        "comment": "Limited edition worth collecting. Beautiful details!",
      },
      {
        "user": "Jack Stewart",
        "rating": 5,
        "comment": "Got these for my girlfriend. She loves them!",
      },
    ],
  ),
  Product(
    id: 29,
    image: AssetConstants.unsplash23,
    price: 2000,
    title: "Wingtip Brogue Dress Shoes",
    description:
        "Classic wingtip brogues featuring intricate perforations and traditional styling. Crafted from premium leather with leather sole and cushioned footbed. Ideal for formal occasions and professional settings.",
    rating: 10,
    slashPrice: 3800,
    categoryId: "4",
    reviews: [
      {
        "user": "Joseph Sanchez",
        "rating": 5,
        "comment":
            "Impeccable craftsmanship. Perfect for weddings and formal events.",
      },
      {
        "user": "Hannah Morris",
        "rating": 5,
        "comment": "Bought for my husband. He wears them every day to work!",
      },
    ],
  ),
  Product(
    id: 30,
    image: AssetConstants.unsplash24,
    price: 2000,
    title: "Modern Derby Shoes Brown",
    description:
        "Contemporary derby shoes in rich brown leather. Features open lacing system, padded collar for comfort, and sleek profile. Perfect for business casual to smart casual dress codes.",
    rating: 10,
    slashPrice: 3300,
    categoryId: "4",
    reviews: [
      {
        "user": "Owen Rogers",
        "rating": 5,
        "comment": "Versatile and comfortable. Great for the office.",
      },
      {
        "user": "Nora Reed",
        "rating": 4,
        "comment": "Nice shoes but took a week to break in properly.",
      },
    ],
  ),
  Product(
    id: 31,
    image: AssetConstants.unsplash25,
    price: 2000,
    title: "Chelsea Monk Strap Shoes",
    description:
        "Sophisticated monk strap shoes blending Chelsea boot styling with dress shoe elegance. Double buckle closure, elastic side panels, and premium leather construction for versatile formal wear.",
    rating: 10,
    slashPrice: 3600,
    categoryId: "4",
    reviews: [
      {
        "user": "Isaac Cook",
        "rating": 5,
        "comment":
            "Unique design. Love the combination of monk strap and Chelsea style.",
      },
      {
        "user": "Stella Morgan",
        "rating": 5,
        "comment": "High quality and very stylish. Worth the investment.",
      },
    ],
  ),
  Product(
    id: 32,
    image: AssetConstants.unsplash26,
    price: 2000,
    title: "Cap Toe Oxford Black",
    description:
        "Traditional cap toe oxfords in polished black leather. Features Goodyear welt construction, leather sole, and classic silhouette. Essential footwear for formal events and professional environments.",
    rating: 10,
    slashPrice: 3900,
    categoryId: "4",
    reviews: [
      {
        "user": "Caleb Bell",
        "rating": 5,
        "comment":
            "The Goodyear welt makes these incredibly durable. Best dress shoes I own.",
      },
      {
        "user": "Audrey Murphy",
        "rating": 5,
        "comment": "Classic and timeless. Perfect for any formal occasion.",
      },
    ],
  ),
  Product(
    id: 33,
    image: AssetConstants.unsplash27,
    price: 2000,
    title: "Penny Loafer Burgundy",
    description:
        "Classic penny loafers in rich burgundy leather. Slip-on design with signature strap detail, cushioned footbed, and flexible sole. Perfect for smart casual occasions and weekend wear.",
    rating: 10,
    slashPrice: 3100,
    categoryId: "4",
    reviews: [
      {
        "user": "Nathan Bailey",
        "rating": 5,
        "comment": "Love the burgundy color. Great with chinos and jeans.",
      },
      {
        "user": "Savannah Rivera",
        "rating": 4,
        "comment": "Comfortable and stylish but runs slightly large.",
      },
    ],
  ),
  Product(
    id: 34,
    image: AssetConstants.unsplash28,
    price: 2000,
    title: "Suede Tassel Loafers",
    description:
        "Elegant suede loafers with tassel detail. Soft suede upper, leather lining, and cushioned insole provide superior comfort. Ideal for business casual and smart casual styling.",
    rating: 10,
    slashPrice: 3400,
    categoryId: "4",
    reviews: [
      {
        "user": "Dylan Cooper",
        "rating": 5,
        "comment": "The suede is buttery soft. Very comfortable loafers.",
      },
      {
        "user": "Bella Richardson",
        "rating": 5,
        "comment":
            "Elegant and versatile. Goes with everything in my wardrobe.",
      },
    ],
  ),
  Product(
    id: 35,
    image: AssetConstants.unsplash29,
    price: 2000,
    title: "Double Monk Strap Cognac",
    description:
        "Distinguished double monk strap shoes in warm cognac leather. Features dual buckle closure, Blake stitch construction, and refined silhouette. Perfect for adding sophistication to any outfit.",
    rating: 10,
    slashPrice: 3700,
    categoryId: "4",
    reviews: [
      {
        "user": "Carter Cox",
        "rating": 5,
        "comment":
            "The cognac color is perfect. Blake stitch makes them very flexible.",
      },
      {
        "user": "Claire Howard",
        "rating": 5,
        "comment":
            "Bought these for my husband. He gets compliments every time he wears them!",
      },
    ],
  ),
  Product(
    id: 36,
    image: AssetConstants.unsplash30,
    price: 2000,
    title: "Whole Cut Oxford",
    description:
        "Minimalist whole cut oxfords made from single piece of leather. Seamless construction, closed lacing, and sleek profile create the ultimate in formal footwear elegance.",
    rating: 10,
    slashPrice: 4200,
    categoryId: "4",
    reviews: [
      {
        "user": "Wyatt Ward",
        "rating": 5,
        "comment":
            "Museum-quality shoes. The seamless construction is incredible.",
      },
      {
        "user": "Lillian Torres",
        "rating": 5,
        "comment":
            "Most elegant dress shoes I've ever seen. Pure craftsmanship.",
      },
    ],
  ),
  Product(
    id: 37,
    image: AssetConstants.unsplash31,
    price: 2000,
    title: "Brogue Derby Tan",
    description:
        "Versatile brogue derby shoes in tan leather. Features decorative perforations, open lacing system, and comfortable fit. Transitions seamlessly from office to evening occasions.",
    rating: 10,
    slashPrice: 3200,
    categoryId: "4",
    reviews: [
      {
        "user": "Luke Peterson",
        "rating": 5,
        "comment": "Perfect everyday dress shoe. Tan color is very versatile.",
      },
      {
        "user": "Lucy Gray",
        "rating": 4,
        "comment":
            "Great quality. Wish they offered half sizes for better fit.",
      },
    ],
  ),
  Product(
    id: 38,
    image: AssetConstants.unsplash34,
    price: 2000,
    title: "Patent Leather Dress Shoes",
    description:
        "Luxurious patent leather dress shoes with high-gloss finish. Features classic design, leather sole, and exceptional comfort. The perfect choice for black-tie events and formal celebrations.",
    rating: 10,
    slashPrice: 4000,
    categoryId: "4",
    reviews: [
      {
        "user": "Julian Ramirez",
        "rating": 5,
        "comment": "Perfect for formal events. The shine is impeccable.",
      },
      {
        "user": "Hazel James",
        "rating": 5,
        "comment": "Bought for a wedding. Received so many compliments!",
      },
      {
        "user": "Grayson Watson",
        "rating": 5,
        "comment": "High-quality patent leather. Worth every dollar.",
      },
    ],
  ),
];
