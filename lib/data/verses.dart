import 'dart:math';

class Verse {
  String category;
  String verse;
  String text;

  Verse({ required this.category, required this.verse, required this.text });
}

class Verses {

  //Gives a list of verses depending on the value it gets
  //All possible values can be found in date/drawerentries

  List<Verse> get (title) {

    List<Verse> filteredList = [];

    for (var verse in versesList) {
      if (verse.category == title) {
        filteredList.add(verse);
      }
    }

    return filteredList;
  }

  //Sends a random verse to the Home Screen by sending an index based on the Verses current count on this file below

  int getRandom () {

    Random random = Random();

    return random.nextInt(versesList.length);

  }

  //Librum's list of verses

  List<Verse> versesList = [
    Verse(category: 'Charity', verse: "Luke 14:12-14", text: "Then Jesus said to his host, “When you give a luncheon or dinner, do not invite your friends, your brothers or sisters, your relatives, or your rich neighbors; if you do, they may invite you back and so you will be repaid. But when you give a banquet, invite the poor, the crippled, the lame, the blind, and you will be blessed. Although they cannot repay you, you will be repaid at the resurrection of the righteous.”"),
    Verse(category: "Charity", verse: "Matthew 6:2-4", text: "“So when you give to the needy, do not announce it with trumpets, as the hypocrites do in the synagogues and on the streets, to be honored by others. Truly I tell you, they have received their reward in full. But when you give to the needy, do not let your left hand know what your right hand is doing, so that your giving may be in secret. Then your Father, who sees what is done in secret, will reward you."),
    Verse(category: "Charity", verse: "Philippians 2:3-4", text: "Do nothing out of selfish ambition or vain conceit. Rather, in humility value others above yourselves, not looking to your own interests but each of you to the interests of the others."),
    Verse(category: "Charity", verse: "Matthew 5:42", text: "Give to the one who asks you, and do not turn away from the one who wants to borrow from you."),
    Verse(category: "Charity", verse: "Psalm 82:3-4", text: "Give justice to the weak and the fatherless; maintain the right of the afflicted and the destitute. Rescue the weak and the needy; deliver them from the hand of the wicked."),
    Verse(category: "Charity", verse: "Proverbs 19:17", text: "Whoever is kind to the poor lends to the Lord, and he will reward them for what they have done."),
    Verse(category: "Charity", verse: "Romans 12:13", text: "Share with the Lord’s people who are in need. Practice hospitality."),
    Verse(category: "Charity", verse: "Proverbs 22:9", text: "The generous will themselves be blessed, for they share their food with the poor."),

    Verse(category: "Enemies", verse: "Romans 12:20-21", text: "On the contrary: “If your enemy is hungry, feed him; if he is thirsty, give him something to drink. In doing this, you will heap burning coals on his head.” Do not be overcome by evil, but overcome evil with good."),
    Verse(category: "Enemies", verse: "Luke 6:27-28", text: " “But to you who are listening I say: Love your enemies, do good to those who hate you, bless those who curse you, pray for those who mistreat you."),
    Verse(category: "Enemies", verse: "Matthew 5:39", text: "But I tell you, do not resist an evil person. If anyone slaps you on the right cheek, turn to them the other cheek also."),
    Verse(category: "Enemies", verse: "Proverbs 20:22", text: "Do not say, “I’ll pay you back for this wrong!” Wait for the Lord, and he will avenge you."),
    Verse(category: "Enemies", verse: "Proverbs 24:17-18", text: "Do not gloat when your enemy falls; when they stumble, do not let your heart rejoice, or the Lord will see and disapprove and turn his wrath away from them."),
    Verse(category: "Enemies", verse: "Exodus 23:4-5", text: "“If you come across your enemy’s ox or donkey wandering off, be sure to return it. If you see the donkey of someone who hates you fallen down under its load, do not leave it there; be sure you help them with it."),
    Verse(category: "Enemies", verse: "Proverbs 16:7", text: "When the Lord takes pleasure in anyone’s way, he causes their enemies to make peace with them."),

    Verse(category: "Faith", verse: "Mark 9:23", text: "“‘If you can’?” said Jesus. “Everything is possible for one who believes.”"),
    Verse(category: "Faith", verse: "Matthew 8:26", text: "He replied, “You of little faith, why are you so afraid?” Then he got up and rebuked the winds and the waves, and it was completely calm."),
    Verse(category: "Faith", verse: "Matthew 21:21-22", text: "Jesus replied, “Truly I tell you, if you have faith and do not doubt, not only can you do what was done to the fig tree, but also you can say to this mountain, ‘Go, throw yourself into the sea,’ and it will be done. If you believe, you will receive whatever you ask for in prayer.”"),
    Verse(category: "Faith", verse: "John 11:40", text: "Then Jesus said, “Did I not tell you that if you believe, you will see the glory of God?”"),
    Verse(category: "Faith", verse: "Proverbs 3:5-6", text: "Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight."),
    Verse(category: "Faith", verse: "Hebrews 11:6", text: "And without faith it is impossible to please God, because anyone who comes to him must believe that he exists and that he rewards those who earnestly seek him."),

    Verse(category: "Family", verse: "1 Timothy 5:8", text: "Anyone who does not provide for their relatives, and especially for their own household, has denied the faith and is worse than an unbeliever."),
    Verse(category: "Family", verse: "Ephesians 6:4", text: "Fathers, do not exasperate your children; instead, bring them up in the training and instruction of the Lord."),
    Verse(category: "Family", verse: "Colossians 3:20", text: "Children, obey your parents in everything, for this pleases the Lord."),
    Verse(category: "Family", verse: "1 Corinthians 7:14", text: "For the unbelieving husband has been sanctified through his wife, and the unbelieving wife has been sanctified through her believing husband. Otherwise your children would be unclean, but as it is, they are holy."),
    Verse(category: "Family", verse: "Colossians 3:21", text: "Fathers,do not embitter your children, or they will become discouraged."),
    Verse(category: "Family", verse: "Mark 10:13-16", text: "People were bringing little children to Jesus for him to place his hands on them, but the disciples rebuked them. When Jesus saw this, he was indignant. He said to them, “Let the little children come to me, and do not hinder them, for the kingdom of God belongs to such as these. Truly I tell you, anyone who will not receive the kingdom of God like a little child will never enter it.” And he took the children in his arms, placed his hands on them and blessed them."),
    Verse(category: "Family", verse: "Matthew 19:4-6", text: "“Haven’t you read,” he replied, “that at the beginning the Creator ‘made them male and female,’  and said, ‘For this reason a man will leave his father and mother and be united to his wife, and the two will become one flesh’? So they are no longer two, but one flesh. Therefore what God has joined together, let no one separate.”"),
    Verse(category: "Family", verse: "1 Corinthians 7:10-11", text: "To the married I give this command (not I, but the Lord): A wife must not separate from her husband. But if she does, she must remain unmarried or else be reconciled to her husband. And a husband must not divorce his wife."),
    Verse(category: "Family", verse: "Colossians 3:18-19", text: "Wives, submit yourselves to your husbands, as is fitting in the Lord. Husbands, love your wives and do not be harsh with them."),
    Verse(category: "Family", verse: "Deuteronomy 6:6-7", text: "These commandments that I give you today are to be on your hearts. Impress them on your children. Talk about them when you sit at home and when you walk along the road, when you lie down and when you get up."),
    Verse(category: "Family", verse: "Titus 2:6-7", text: "Similarly, encourage the young men to be self-controlled. In everything set them an example by doing what is good. In your teaching show integrity, seriousness"),
    Verse(category: "Family", verse: "Proverbs 19:18", text: "Discipline your children, for in that there is hope; do not be a willing party to their death."),
    Verse(category: "Family", verse: "Psalm 103:13", text: "As a father has compassion on his children, so the Lord has compassion on those who fear him;"),
    Verse(category: "Family", verse: "Proverbs 13:24", text: "Whoever spares the rod hates their children, but the one who loves their children is careful to discipline them."),
    Verse(category: "Family", verse: "Proverbs 29:15", text: "A rod and a reprimand impart wisdom, but a child left undisciplined disgraces its mother."),
    Verse(category: "Family", verse: "Proverbs 22:6", text: "Start children off on the way they should go, and even when they are old they will not turn from it."),

    Verse(category: "Fear", verse: "Luke 10:19", text: "I have given you authority to trample on snakes and scorpions and to overcome all the power of the enemy; nothing will harm you."),
    Verse(category: "Fear", verse: "Matthew 10:29-31", text: "Are not two sparrows sold for a penny? Yet not one of them will fall to the ground outside your Father’s care. And even the very hairs of your head are all numbered. So don’t be afraid; you are worth more than many sparrows."),
    Verse(category: "Fear", verse: "1 Peter 5:6-7", text: "Humble yourselves, therefore, under God’s mighty hand, that he may lift you up in due time. Cast all your anxiety on him because he cares for you."),
    Verse(category: "Fear", verse: "Philippians 4:19", text: "And my God will meet all your needs according to the riches of his glory in Christ Jesus."),
    Verse(category: "Fear", verse: "Isaiah 43:2", text: "When you pass through the waters, I will be with you; and when you pass through the rivers, they will not sweep over you. When you walk through the fire, you will not be burned; the flames will not set you ablaze."),
    Verse(category: "Fear", verse: "Deuteronomy 31:6", text: "Be strong and courageous. Do not be afraid or terrified because of them, for the Lord your God goes with you; he will never leave you nor forsake you.”"),
    Verse(category: "Fear", verse: "Isaiah 41:10", text: "So do not fear, for I am with you; do not be dismayed, for I am your God. I will strengthen you and help you; I will uphold you with my righteous right hand."),
    Verse(category: "Fear", verse: "Psalm 34:7", text: "The angel of the Lord encamps around those who fear him, and he delivers them."),
    Verse(category: "Fear", verse: "Isaiah 40:31", text: "but those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint."),
    Verse(category: "Fear", verse: "Psalm 10:17", text: "You, Lord, hear the desire of the afflicted; you encourage them, and you listen to their cry,"),
    Verse(category: "Fear", verse: "Psalm 56:3-4", text: "When I am afraid, I put my trust in you. In God, whose word I praise— in God I trust and am not afraid. What can mere mortals do to me?"),
    Verse(category: "Fear", verse: "Joshua 1:9", text: "Have I not commanded you? Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.”"),

    Verse(category: "Forgiveness", verse: "Colossians 3:13", text: "Bear with each other and forgive one another if any of you has a grievance against someone. Forgive as the Lord forgave you."),
    Verse(category: "Forgiveness", verse: "Mark 11:25", text: "And when you stand praying, if you hold anything against anyone, forgive them, so that your Father in heaven may forgive you your sins.”"),
    Verse(category: "Forgiveness", verse: "Ephesians 4:32", text: "Be kind and compassionate to one another, forgiving each other, just as in Christ God forgave you."),
    Verse(category: "Forgiveness", verse: "Hebrews 8:12", text: "For I will forgive their wickedness and will remember their sins no more.”"),
    Verse(category: "Forgiveness", verse: "Hebrews 10:17", text: "“Their sins and lawless acts I will remember no more.”"),
    Verse(category: "Forgiveness", verse: "Psalm 130:3-4", text: "If you, Lord, kept a record of sins, Lord, who could stand? But with you there is forgiveness, so that we can, with reverence, serve you."),
    Verse(category: "Forgiveness", verse: "Proverbs 17:9", text: "Whoever would foster love covers over an offense, but whoever repeats the matter separates close friends."),

    Verse(category: "Guidance", verse: "James 1:5", text: "If any of you lacks wisdom, you should ask God, who gives generously to all without finding fault, and it will be given to you."),
    Verse(category: "Guidance", verse: "John 14:26", text: "But the Advocate, the Holy Spirit, whom the Father will send in my name, will teach you all things and will remind you of everything I have said to you."),
    Verse(category: "Guidance", verse: "Psalms 32:8", text: "I will instruct you and teach you in the way you should go; I will counsel you with my loving eye on you."),
    Verse(category: "Guidance", verse: "Psalm 48:14", text: "For this God is our God for ever and ever; he will be our guide even to the end."),
    Verse(category: "Guidance", verse: "Isaiah 30:21", text: "Whether you turn to the right or to the left, your ears will hear a voice behind you, saying, “This is the way; walk in it.”"),
    Verse(category: "Guidance", verse: "Isaiah 58:11", text: "The Lord will guide you always; he will satisfy your needs in a sun-scorched land and will strengthen your frame. You will be like a well-watered garden, like a spring whose waters never fail."),
    Verse(category: "Guidance", verse: "Proverbs 16:33", text: "The lot is cast into the lap, but its every decision is from the Lord."),

    Verse(category: "Pride", verse: "Matthew 23:12", text: "For those who exalt themselves will be humbled, and those who humble themselves will be exalted."),
    Verse(category: "Pride", verse: "James 4:6", text: "But he gives us more grace. That is why Scripture says: “God opposes the proud but shows favor to the humble.”"),
    Verse(category: "Pride", verse: "Proverbs 11:2", text: "When pride comes, then comes disgrace, but with humility comes wisdom."),
    Verse(category: "Pride", verse: "Proverbs 15:33", text: "Wisdom’s instruction is to fear the Lord, and humility comes before honor."),

    Verse(category: "Sacrifice", verse: "1 John 3:16", text: "This is how we know what love is: Jesus Christ laid down his life for us. And we ought to lay down our lives for our brothers and sisters."),
    Verse(category: "Sacrifice", verse: "Mark 10:45", text: "For even the Son of Man did not come to be served, but to serve, and to give his life as a ransom for many.”"),
    Verse(category: "Sacrifice", verse: "Matthew 16:24", text: "Then Jesus said to his disciples, “Whoever wants to be my disciple must deny themselves and take up their cross and follow me."),
    Verse(category: "Sacrifice", verse: "1 Peter 2:21", text: "To this you were called, because Christ suffered for you, leaving you an example, that you should follow in his steps."),
    Verse(category: "Sacrifice", verse: "Romans 12:1-2", text: "Therefore, I urge you, brothers and sisters, in view of God’s mercy, to offer your bodies as a living sacrifice, holy and pleasing to God—this is your true and proper worship. 2 Do not conform to the pattern of this world, but be transformed by the renewing of your mind. Then you will be able to test and approve what God’s will is—his good, pleasing and perfect will."),

    Verse(category: "Wealth", verse: "Luke 16:11", text: "So if you have not been trustworthy in handling worldly wealth, who will trust you with true riches?"),
    Verse(category: "Wealth", verse: "Matthew 6:19-21", text: "“Do not store up for yourselves treasures on earth, where moths and vermin destroy, and where thieves break in and steal. But store up for yourselves treasures in heaven, where moths and vermin do not destroy, and where thieves do not break in and steal. For where your treasure is, there your heart will be also."),
    Verse(category: "Wealth", verse: "1 Timothy 6:17", text: "Command those who are rich in this present world not to be arrogant nor to put their hope in wealth, which is so uncertain, but to put their hope in God, who richly provides us with everything for our enjoyment."),
    Verse(category: "Wealth", verse: "1 Timothy 6:10", text: "For the love of money is a root of all kinds of evil. Some people, eager for money, have wandered from the faith and pierced themselves with many griefs."),
    Verse(category: "Wealth", verse: "Proverbs 13:11", text: "Dishonest money dwindles away, but whoever gathers money little by little makes it grow."),
    Verse(category: "Wealth", verse: "Proverbs 15:27", text: "The greedy bring ruin to their households, but the one who hates bribes will live."),
    Verse(category: "Wealth", verse: "Ecclesiastes 11:2", text: "Invest in seven ventures, yes, in eight; you do not know what disaster may come upon the land."),
    Verse(category: "Wealth", verse: "Proverbs 22:26-27", text: "Do not be one who shakes hands in pledge or puts up security for debts; if you lack the means to pay, your very bed will be snatched from under you."),
    Verse(category: "Wealth", verse: "Proverbs 21:20", text: "The wise store up choice food and olive oil, but fools gulp theirs down."),
    Verse(category: "Wealth", verse: "Proverbs 30:24-25", text: "“Four things on earth are small, yet they are extremely wise: Ants are creatures of little strength, yet they store up their food in the summer;"),
    Verse(category: "Wealth", verse: "Ecclesiastes 5:10", text: "Whoever loves money never has enough; whoever loves wealth is never satisfied with their income. This too is meaningless."),
    Verse(category: "Wealth", verse: "Proverbs 3:9-10", text: "Honor the Lord with your wealth, with the firstfruits of all your crops; then your barns will be filled to overflowing, and your vats will brim over with new wine."),
    Verse(category: "Wealth", verse: "Nehemiah 10:35", text: "“We also assume responsibility for bringing to the house of the Lord each year the firstfruits of our crops and of every fruit tree."),

    Verse(category: "Work", verse: "Hebrews 6:10-11", text: "God is not unjust; he will not forget your work and the love you have shown him as you have helped his people and continue to help them. We want each of you to show this same diligence to the very end, so that what you hope for may be fully realized."),
    Verse(category: "Work", verse: "Colossians 3:23-24", text: "Whatever you do, work at it with all your heart, as working for the Lord, not for human masters, since you know that you will receive an inheritance from the Lord as a reward. It is the Lord Christ you are serving."),
    Verse(category: "Work", verse: "Ephesians 4:28", text: "Anyone who has been stealing must steal no longer, but must work, doing something useful with their own hands, that they may have something to share with those in need."),
    Verse(category: "Work", verse: "Psalm 128:2", text: "You will eat the fruit of your labor; blessings and prosperity will be yours."),
    Verse(category: "Work", verse: "Proverbs 12:11", text: "Those who work their land will have abundant food, but those who chase fantasies have no sense."),
    Verse(category: "Work", verse: "Proverbs 21:25", text: "The craving of a sluggard will be the death of him, because his hands refuse to work."),
    Verse(category: "Work", verse: "Proverbs 6:6-8", text: "Go to the ant, you sluggard; consider its ways and be wise! It has no commander, no overseer or ruler, yet it stores its provisions in summer and gathers its food at harvest."),
    Verse(category: "Work", verse: "Proverbs 27:23-24", text: "Be sure you know the condition of your flocks, give careful attention to your herds; for riches do not endure forever, and a crown is not secure for all generations."),
    Verse(category: "Work", verse: "Genesis 2:15", text: "The Lord God took the man and put him in the Garden of Eden to work it and take care of it.")
  ];

}