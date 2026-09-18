import Foundation

public struct ConversationTheme: Identifiable, Hashable, Sendable {
    public var id: String
    public var title: String
    public var subtitle: String
    public var symbol: String
    public var category: String
    public var situation: String
    public var colorIndex: Int
    public init(_ id: String, _ title: String, _ subtitle: String, _ symbol: String, _ category: String, _ situation: String, _ colorIndex: Int) {
        self.id = id; self.title = title; self.subtitle = subtitle; self.symbol = symbol
        self.category = category; self.situation = situation; self.colorIndex = colorIndex
    }
    public static let shared: [Self] = [
        .init("handover", "The handover", "What the next shift needs to know", "arrow.left.arrow.right", "Care work", "Role-play only, no real medical advice. You are a nurse colleague receiving the shift handover. Let the learner report a patient’s condition, care given and anything unusual. Ask short follow-up questions and keep the report structured.", 0),
        .init("admission", "Admission interview", "Getting to know a new patient", "person.text.rectangle", "Care work", "Role-play only, no real medical advice. You are a patient who has just arrived on the ward. Let the learner ask about your complaints, history, allergies and daily needs. Answer as an ordinary person would, with everyday words.", 1),
        .init("medication", "Medication round", "Explaining what and when", "pills", "Care work", "Role-play only, never give real dosage or medical advice. You are a patient receiving your medication. Let the learner explain what it is for, when to take it and ask whether you have questions. Ask one simple question back.", 2),
        .init("relatives", "Talking to relatives", "Polite, clear and discreet", "phone", "Care work", "Role-play only, no real medical advice. You are a worried relative calling or visiting. Let the learner inform you politely, stay calm and respect confidentiality by not sharing details they may not give. Stay formal.", 3),
        .init("wardround", "On the ward round", "Short, precise, to the point", "stethoscope", "Care work", "Role-play only, no real medical advice. You are a doctor on the ward round. Let the learner report briefly on a patient: observations, changes and open questions. Ask for clarification and switch between technical and plain words.", 0),
        .init("pain", "Where does it hurt?", "Assessing pain calmly", "heart.text.square", "Care work", "Role-play only, no real medical advice. You are a patient in pain. Let the learner ask where it hurts, how strong it is on a scale and what it feels like, then reassure you and explain the next step.", 1),
        .init("bodycare", "Personal care", "Step by step, with consent", "figure.walk", "Care work", "Role-play only, no real medical advice. You are a patient being helped with washing, dressing or getting out of bed. Let the learner explain each step, ask for your consent and encourage you kindly.", 2),
        .init("emergency", "Reporting an emergency", "Brief and clear under pressure", "exclamationmark.triangle", "Care work", "Role-play only, no real medical advice. You are a colleague receiving a report about a fall or sudden change in a patient. Let the learner report briefly and clearly, then ask short questions about what happened and what has been done.", 3),
        .init("phonecall", "On the phone", "Orders, questions, spelling", "phone.arrow.up.right", "Care work", "Role-play only, no real medical advice. You are a pharmacy or another ward on the phone. Let the learner place an order, ask a question or pass on information. Ask them to spell a name and confirm details.", 0),
        .init("documentation", "Writing the care report", "Short sentences, past tense", "doc.text", "Care work", "Role-play only, no real medical advice. You are a colleague helping the learner write a care report. Let them describe what they observed and did in short report sentences and suggest clearer wording.", 1),
        .init("dementia", "A gentle conversation", "Simple words, patience, warmth", "leaf", "Care work", "Role-play only, no real medical advice. You are a person living with dementia who is a little confused about the time and place. Let the learner use simple sentences, patience and a calm, validating tone.", 2),
        .init("discharge", "Going home", "Instructions and next steps", "door.left.hand.open", "Care work", "Role-play only, no real medical advice. You are a patient about to be discharged. Let the learner explain the next steps, appointments and what to watch for at home, then ask questions to check you understood.", 3),
        .init("team", "In the team", "Shifts, favours and small conflicts", "person.3", "Care work", "Role-play only, no real medical advice. You are a colleague in the team. Let the learner ask for a shift swap, decline politely or resolve a small disagreement in a friendly way.", 0),
        .init("coffee", "A coffee?", "Something warm, please", "cup.and.saucer", "Everyday", "You work in a cosy café. Help the learner order, then chat naturally.", 0),
        .init("weekend", "The weekend", "Tell me about yours", "sun.horizon", "Connection", "Ask about the learner’s weekend. Practise past events and follow their interests.", 1),
        .init("walk", "A little walk", "Out into the fresh air", "tree", "Local life", "Take an imagined forest walk together. Talk about nature, weather and daily life.", 2),
        .init("dinner", "Dinner plans", "Let’s make something", "fork.knife", "Everyday", "Plan dinner together. Ask about ingredients, preferences and the steps of cooking.", 3),
        .init("introductions", "Nice to meet you", "Start somewhere small", "hand.wave", "Connection", "Meet the learner for the first time. Learn their interests through natural introductions.", 0),
        .init("groceries", "At the market", "Find the good tomatoes", "basket", "Everyday", "Help the learner shop at a local food market. Practise quantities and questions.", 2),
        .init("travel", "Next stop", "A ticket to somewhere", "tram", "Everyday", "Plan a train trip. Discuss routes and tickets without inventing real current schedules.", 1),
        .init("home", "A place of your own", "Make yourself at home", "house", "Everyday", "Discuss a home, rooms, moving and what makes a place comfortable.", 3),
        .init("friends", "New friends", "An invitation, maybe", "person.2", "Connection", "You are a friendly new acquaintance. Arrange something to do together.", 0),
        .init("work", "Monday morning", "Around the office", "briefcase", "Everyday", "Chat as colleagues. Discuss work, meetings and a small problem to solve.", 1),
        .init("weather", "Rain again?", "Whatever the weather", "cloud.rain", "Local life", "Talk about weather, clothing and outdoor plans. Do not claim today’s forecast without sources.", 1),
        .init("cabin", "A weekend away", "A quieter kind of day", "mountain.2", "Local life", "Plan a weekend away: travel, food, walks and relaxing together.", 2),
        .init("music", "On repeat", "What are you listening to?", "music.note", "Interests", "Ask about music the learner enjoys. Explore feelings, favourites and concerts.", 0),
        .init("film", "One more episode", "Something worth watching", "film", "Interests", "Discuss films and series. Ask for opinions and avoid unwanted spoilers.", 1),
        .init("books", "Between the pages", "A story that stayed", "book", "Interests", "Chat about books, characters, stories and why they matter to the learner.", 3),
        .init("design", "Good things", "Made with a little care", "pencil.and.outline", "Interests", "Explore design, architecture and objects the learner loves. Ask for concrete opinions.", 0),
        .init("technology", "What comes next", "Ideas, tools and tomorrow", "sparkles", "Interests", "Discuss technology and how it changes daily life. Delegate claims needing current facts.", 1),
        .init("travelstories", "Somewhere else", "A place you remember", "globe.europe.africa", "Interests", "Exchange travel stories and dream destinations. Invite descriptions and comparisons.", 2),
        .init("restaurant", "A table for two", "Stay for dessert", "wineglass", "Everyday", "Role-play a restaurant meal. Practise requests, preferences and polite problem-solving.", 0),
        .init("neighbours", "Next door", "A familiar face", "building.2", "Connection", "Chat as neighbours. Discuss the neighbourhood and small requests for help.", 3),
        .init("traditions", "Everyday customs", "Small customs, big stories", "flag", "Local life", "Explore everyday customs with nuance. Avoid treating a whole culture as alike.", 2),
        .init("opinions", "What do you think?", "Room for another view", "quote.bubble", "Connection", "Choose an everyday dilemma. Invite reasons and gently explore another perspective.", 1),
        .init("future", "A year from now", "Plans worth talking about", "paperplane", "Connection", "Talk about hopes and future plans. Explore possibilities and practical next steps.", 3),
        .init("today", "The world today", "Something to talk about", "newspaper", "Interests", "Ask what current topic interests the learner, then delegate a source-backed lookup before discussing facts.", 0)
    ]
}
