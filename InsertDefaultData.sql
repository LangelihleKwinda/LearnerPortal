use [LearnerPortal]
go

print char(13) + '1. Start Query InsertDefaultData Execution'

declare @decript varchar(4000),
        @encript varbinary(8000),
		@password varchar(50),
		@administrator varchar(50)

set @password = 'P@ssw0rd' set @administrator = 'Administrator'

print char(13) + '2. Insert Default Admin User'
if exists (select * from information_schema.tables where table_name = 'Users')
	begin
		exec Proc_Encription_PW @password, @encript output
		insert into Users values(@administrator, @administrator, @administrator, @administrator, @encript, 0, 1)
	end

print char(13) + '2. Insert Default Quote_Of_The_Day Messages'
if exists (select * from information_schema.tables where table_name = 'Quote_Of_The_Day')
	begin
		insert into Quote_Of_The_Day values (N'"In order to succeed, we must first believe that we can."')
		insert into Quote_Of_The_Day values (N'There are 10 types of people in this world - those who understand binary, and those who don''t.')
		insert into Quote_Of_The_Day values (N'"The wise have something to say, the foolish have to say something."')
		insert into Quote_Of_The_Day values (N'"There is in the worst of fortune the best of chances for a happy change."')
		insert into Quote_Of_The_Day values (N'"The wisest mind has something yet to learn."')
		insert into Quote_Of_The_Day values (N'"Happiness is a choice that requires effort at times."')
		insert into Quote_Of_The_Day values (N'"The best way to cheer yourself up is to try to cheer somebody else up."')
		insert into Quote_Of_The_Day values (N'"The true test of character is not how much we know how to do, but how we behave when we don''t know what to do."')
		insert into Quote_Of_The_Day values (N'Minds are like parachutes. They only function when they are open.')
		insert into Quote_Of_The_Day values (N'Life is the art of drawing sufficient conclusions from insufficient premises.')
		insert into Quote_Of_The_Day values (N'It is not enough to do your best; you must know what to do, and THEN do your best.')
		insert into Quote_Of_The_Day values (N'All my life I''ve wanted to be someone; I guess I should have been more specific.')
		insert into Quote_Of_The_Day values (N'Do the right thing. It will gratify some people and astonish the rest')
		insert into Quote_Of_The_Day values (N'We think in generalities, but we live in details.')
		insert into Quote_Of_The_Day values (N'No person can be a great leader unless he takes genuine joy in the successes of those under him.')
		insert into Quote_Of_The_Day values (N'I haven''t failed, I''ve found 10,000 ways that don''t work.')
		insert into Quote_Of_The_Day values (N'Every really new idea looks crazy at first.')
		insert into Quote_Of_The_Day values (N'The important thing is never to stop questioning.')
		insert into Quote_Of_The_Day values (N'A day without sunshine is like, night')
		insert into Quote_Of_The_Day values (N'On the other hand, you have different fingers.')
		insert into Quote_Of_The_Day values (N'99% of lawyers give the rest a bad name')
		insert into Quote_Of_The_Day values (N'I feel like I ''m dianally parked in a parallel universe.')
		insert into Quote_Of_The_Day values (N'Honk if you love peace and quiet.')
		insert into Quote_Of_The_Day values (N'He who laughs last, thinks slowest.')
		insert into Quote_Of_The_Day values (N'A clear conscience is usually the sign of a bad memory.')
		insert into Quote_Of_The_Day values (N'Plan to be spontaneous tomorrow.')
		insert into Quote_Of_The_Day values (N'How do you tell when you''re out of invisible ink?')
		insert into Quote_Of_The_Day values (N'How much deeper would the ocean be without sponges?')
		insert into Quote_Of_The_Day values (N'What happens if you get scared half to death twice?')
		insert into Quote_Of_The_Day values (N'Why do psychics have to ask you your name?')
		insert into Quote_Of_The_Day values (N'Inside every older person is a younger person wondering what happened.')
		insert into Quote_Of_The_Day values (N'Everything is funny as long as it is happening to somebody else.')
		insert into Quote_Of_The_Day values (N'It isn''t necessary to be rich and famous to be happy. It''s only necessary be rich.')
		insert into Quote_Of_The_Day values (N'Quality begins on the inside... and then works its way out.')
		insert into Quote_Of_The_Day values (N'Real integrity is doing the right thing, knowing that nobody''s ing to know whether you did it or not.')
		insert into Quote_Of_The_Day values (N'It is not your customer''s job to remember you. It is your obligation and responsibility to make sure they don''t have the chance to forget you.')
		insert into Quote_Of_The_Day values (N'The best way to predict the future is to invent it')
		insert into Quote_Of_The_Day values (N'Opportunities multiply as they are seized')
		insert into Quote_Of_The_Day values (N'By perseverance, study, and eternal desire, any man can become great')
		insert into Quote_Of_The_Day values (N'Do more than is required of you')
		insert into Quote_Of_The_Day values (N'I find that the harder I work, the more luck I seem to have')
		insert into Quote_Of_The_Day values (N'Each problem that I solved became a rule which served afterwards to solve other problems')
		insert into Quote_Of_The_Day values (N'Whether you think that you can, or that you can''t, you are usually right')
		insert into Quote_Of_The_Day values (N'Problems worthy of attack prove their worth by fighting back')
		insert into Quote_Of_The_Day values (N'If you can''t get rid of the skeleton in your closet, you''d best teach it to dance')
		insert into Quote_Of_The_Day values (N'Talent does what it can; genius does what it must')
		insert into Quote_Of_The_Day values (N'Along with success comes a reputation for wisdom')
		insert into Quote_Of_The_Day values (N'Nothing can stop the man with the right mental attitude from achieving his al; nothing on earth can help the man with the wrong mental attitude.')
		insert into Quote_Of_The_Day values (N'A failure is a man who has blundered, but is not able to cash in on the experience.')
		insert into Quote_Of_The_Day values (N'Success does not consist in never making blunders, but in never making the same one a second time')
		insert into Quote_Of_The_Day values (N'Success is the od fortune that comes from aspiration, desperation, perspiration and inspiration')
		insert into Quote_Of_The_Day values (N'The talent of success is nothing more than doing what you can do, well.')
		insert into Quote_Of_The_Day values (N' Experience is something you don''t get until just after you need it.')
		insert into Quote_Of_The_Day values (N'The hardness of the butter is proportional to the softness of the  bread.')
		insert into Quote_Of_The_Day values (N'To steal ideas from one person is plagiarism; to steal from many is  research.')
		insert into Quote_Of_The_Day values (N'The problem with the gene pool is that there is no lifeguard.')
		insert into Quote_Of_The_Day values (N'The sooner you fall behind, the more time you''ll have to catch up.')
		insert into Quote_Of_The_Day values (N'The colder the X-ray table, the more of your body is required to be on  it.')
		insert into Quote_Of_The_Day values (N'Everyone has a photographic memory; some just don''t have film.')
		insert into Quote_Of_The_Day values (N'If your car could travel at the speed of light, would your headlights  work? ')
		insert into Quote_Of_The_Day values (N'You can make fun all you want, but when a zebra talks, people listen.')
		insert into Quote_Of_The_Day values (N'The Nobel Prize! Gee, thanks, fellas!�')
		insert into Quote_Of_The_Day values (N'Weaseling out of things is important to learn. It''s what separates us from the animals ... except the weasel.')
		insert into Quote_Of_The_Day values (N'Vampires are make-believe, like elves, gremlins, and eskimos.')
		insert into Quote_Of_The_Day values (N' I''m better than dirt. Well, most kinds of dirt, not that fancy store-bought dirt... I can''t compete with that stuff.')
		insert into Quote_Of_The_Day values (N'Facts are meaningless. You could use facts to prove anything that''s even remotely true!')
		insert into Quote_Of_The_Day values (N'it takes two to lie. One to lie and one to listen')
		insert into Quote_Of_The_Day values (N'Don''t kid yourself, Jimmy. If a cow ever t the chance, he''d eat you and everyone you care about!')
		insert into Quote_Of_The_Day values (N'My cat''s breath smells like cat food.')
		insert into Quote_Of_The_Day values (N'When will I learn? The answer to life''s problems aren''t at the bottom of a bottle, they''re on TV!')
		insert into Quote_Of_The_Day values (N'They only come out in the night. Or in this case, the day. ')
		insert into Quote_Of_The_Day values (N'That is a rare photo of Sean Connery signed by Roger Moore')
		insert into Quote_Of_The_Day values (N'Tonight I�m ing to party like it�s on sale for $19.99!')
		insert into Quote_Of_The_Day values (N'Oh, so they have internet on computers now! ')
		insert into Quote_Of_The_Day values (N' I''ve ne back in time to when dinosaurs weren''t just confined to zoos.')
		insert into Quote_Of_The_Day values (N' Uh... so... do you like... stuff? ')
		insert into Quote_Of_The_Day values (N'Not only am I not learning, I''m forgetting stuff I used to know. ')
		insert into Quote_Of_The_Day values (N'Anyone who proposes to do od must not expect people to roll stones out of his way, but must accept his lot calmly if they even roll a few more upon it.')
		insert into Quote_Of_The_Day values (N'The function of wisdom is to discriminate between od and evil.')
		insert into Quote_Of_The_Day values (N'He who wishes to secure the od of others, has already secured his own.')
		insert into Quote_Of_The_Day values (N'At the end of the money, I allways have some month left.')
		insert into Quote_Of_The_Day values (N'When was the last time you did something for the first time?')
		insert into Quote_Of_The_Day values (N'I do know everything, just not all at once. It''s a virtual memory problem.')
		insert into Quote_Of_The_Day values (N'Code so clean you could eat off it!')
		insert into Quote_Of_The_Day values (N'A computer scientist is someone who, when told to '' to Hell'', sees the '' to'',  rather than the destination, as harmful.')
		insert into Quote_Of_The_Day values (N'A core dump is your computer''s way of saying "Here''s what''s on my mind, what''s on yours?"')
		insert into Quote_Of_The_Day values (N'A od programmer is someone who looks both ways before crossing a one-way street.')
		insert into Quote_Of_The_Day values (N'Calculating in binary code is as easy as 01,10,11.')
		insert into Quote_Of_The_Day values (N'Computer Science: solving today''s problems tomorrow.')
		insert into Quote_Of_The_Day values (N'Documentation is like sex: when it is od, it is very, very od. And when it is bad, it is still better than nothing.')
		insert into Quote_Of_The_Day values (N'Hey! It compiles! Ship it!')
		insert into Quote_Of_The_Day values (N'My operat~1 system unders~1 long filena~1 , does yours?')
		insert into Quote_Of_The_Day values (N'Real programmers don''t document. If it was hard to write, it should be hard to understand.')
		insert into Quote_Of_The_Day values (N'Software isn''t released, it''s allowed to escape.')
		insert into Quote_Of_The_Day values (N'There are 10 kinds of people in the world: Those who understand binary and those who don''t...')
		insert into Quote_Of_The_Day values (N'I thought my mechanic would try to do me in, luckily he said I only needed turn signal fluid')
		insert into Quote_Of_The_Day values (N'I smile because i have absolutly no idea what is ing on!')
		insert into Quote_Of_The_Day values (N'Accept the some days you are the pigeon and some days you are the statue.')
		insert into Quote_Of_The_Day values (N'Do Lipton employees take coffee breaks?')
		insert into Quote_Of_The_Day values (N'Lord help me to be the person my dog thinks I am.')
		insert into Quote_Of_The_Day values (N'I believe that 5 out of 4 people are bad at fractions.')
		insert into Quote_Of_The_Day values (N'I''m nna stop procrastinating one of these days.')
		insert into Quote_Of_The_Day values (N'For every scientific (or engineering) action, there is an equal and opposite social reaction.')
		insert into Quote_Of_The_Day values (N'When a distinguished but elderly scientist states that something is possible he is almost certainly right. When he states that something is impossible, he is very probably wrong.')
		insert into Quote_Of_The_Day values (N'The only way of discovering the limits of the possible is to venture a little way past them into the impossible.')
		insert into Quote_Of_The_Day values (N'Any sufficiently advanced technology is indistinguishable from magic.')
		insert into Quote_Of_The_Day values (N'Inside every large problem is a small problem struggling to get out.')
		insert into Quote_Of_The_Day values (N'People under time pressure don�t think faster.')
		insert into Quote_Of_The_Day values (N'The number of transistors on an integrated circuit will double in about 18 months.')
		insert into Quote_Of_The_Day values (N'If there are two or more ways to do something, and one of those ways can result in a catastrophe, then someone will do it.')
		insert into Quote_Of_The_Day values (N'The explanation requiring the fewest assumptions is most likely to be correct.')
		insert into Quote_Of_The_Day values (N'Work expands so as to fill the time available for its completion.')
		insert into Quote_Of_The_Day values (N'You cannot reduce the complexity of a given task beyond a certain point. Once you�ve reached that point, you can only shift the burden around.')
		insert into Quote_Of_The_Day values (N'Silence is one of the hardest arguments to refute')
		insert into Quote_Of_The_Day values (N'Wisdom begins in wonder')
		insert into Quote_Of_The_Day values (N'One reason I don''t drink is that I want to know when I am having a od time.')
		insert into Quote_Of_The_Day values (N'Would those of you in the cheaper seats clap your hands? And the rest of you, if you''ll just rattle your jewelry.')
		insert into Quote_Of_The_Day values (N'The law is not so much carved in stone as it is written in water, flowing in and out with the tide.')
		insert into Quote_Of_The_Day values (N'No one else can speak the words on your lips Drench yourself in words unspoken Live your life with arms wide open Today is where your book begins The rest is still unwritten ')
		insert into Quote_Of_The_Day values (N'I have failed many times, and that''s why I am a success.')
		insert into Quote_Of_The_Day values (N'Look at all the sentences which seem true and question them.')
		insert into Quote_Of_The_Day values (N'The advantage of a bad memory is that one enjoys several times the same od things for the first time.')
		insert into Quote_Of_The_Day values (N'If you leave me, can I come too?')
		insert into Quote_Of_The_Day values (N'If there is no chocolate in heaven, Im not ing.')
		insert into Quote_Of_The_Day values (N'I don''t mind coming to work, but that eight hour wait to  home is nonsense.')
		insert into Quote_Of_The_Day values (N'Don''t take for granted the things closest to your heart.Cling to them as they would your life, for without them, life is meaningless. ')
		insert into Quote_Of_The_Day values (N'Don''t let your life slip through your fingers by living in the past or for the future.By living your life one day at a time, you live all the days of your life. ')
		insert into Quote_Of_The_Day values (N'Don''t give up when you still have something to give.Nothing is really over until the moment you stop trying.')
		insert into Quote_Of_The_Day values (N'Don''t be afraid to admit that you are less than perfect.It is this fragile thread that binds us each together.')
		insert into Quote_Of_The_Day values (N'Don''t be afraid to encounter risks. It is by taking chances that we learn how to be brave. ')
		insert into Quote_Of_The_Day values (N'Don''t dismiss your dreams.')
		insert into Quote_Of_The_Day values (N'Don''t run through life so fast that you forget not only where you''ve been,but also where you are ing.')
		insert into Quote_Of_The_Day values (N'Life is not a race, but a journey to be savoured each step of the way.')
		insert into Quote_Of_The_Day values (N'Failure doesn''t mean you accomplished nothing,It means you have learned something.')
		insert into Quote_Of_The_Day values (N'Failure doesn''t mean you''ve wasted your life.It means you have a reason to start afresh.')
		insert into Quote_Of_The_Day values (N'Failure doesn''t mean you should give up.It means you must try harder.')
		insert into Quote_Of_The_Day values (N'Abscence makes the heart grow fonder.')
		insert into Quote_Of_The_Day values (N'You are successful the moment you start moving toward a worthwhile od')
		insert into Quote_Of_The_Day values (N'Always listen to experts. They''re tell you what can''t be done and why. Then do it.')
		insert into Quote_Of_The_Day values (N'Nothing under the sun is accidental.')
		insert into Quote_Of_The_Day values (N'You cannot define talent. All you can do is build the greenhouse and see if it grows.')
		insert into Quote_Of_The_Day values (N'What I have learned is but a handful of earth, what is left unlearned is the Earth itself')
		insert into Quote_Of_The_Day values (N'Win without boasting. Lose without excuse.')
		insert into Quote_Of_The_Day values (N'Wisdom is the reward you get for a lifetime of listening when you would rather have talked.')
		insert into Quote_Of_The_Day values (N'There are two ways of spreading light: to be the candle or the mirror that reflects it.')
		insert into Quote_Of_The_Day values (N'There is no limit to what can be accomplished if it doesn''t matter who gets the credit.')
		insert into Quote_Of_The_Day values (N'Use the �Can I sleep?� judgment when making investments. An investment is too risky if you are ing to lie awake at night worrying about it.')
		insert into Quote_Of_The_Day values (N'Be extremely cautious if the returns promised on an investment exceed what is generally available. If they sound too od to be true, they probably are. It usually means the investment is too ambitious in its claims, too risky, or simply a scam.')
		insert into Quote_Of_The_Day values (N'How do you decide whether you should invest directly in shares? Simple. If you haven�t t the time to learn about stock markets, to follow the progress of companies or to track your portfolio, rather invest in unit trust funds and/or life assurance endowment policies that have shares as their underlying investments.')
		insert into Quote_Of_The_Day values (N'Always check how much commission is being paid to your financial adviser. Some financial products � particularly those offered by so-called linked investment product providers � come with particularly high costs and commissions. High commissions can be a perverse incentive for advisers to mis-sell.')
		insert into Quote_Of_The_Day values (N'Don�t be afraid to netiate commissions/fees for financial advice. Most financial products allow you to do this. After all, it is your money.')
		insert into Quote_Of_The_Day values (N'Never use debt on which you have to pay interest to buy products you consume. You are in effect making the items far more expensive, and will be able to save less and buy less in the long term')
		insert into Quote_Of_The_Day values (N'Borrowing to buy reasonably priced property is a od thing because you can expect the property to improve in value.')
		insert into Quote_Of_The_Day values (N'You should not, as a rule, borrow to invest, particularly not in volatile markets, such as share markets. The exception is property that you intend to hold for at least five years and in which you live.')
		insert into Quote_Of_The_Day values (N'The best investment you can make is to repay debt. Interest rates in South Africa are high. By paying off debt, you get one of the best returns available, tax-free.')
		insert into Quote_Of_The_Day values (N'Borrow wisely. Expensive debt is a quick way to lose money. For example, borrowing against a credit card is far more expensive than borrowing against a home loan. The difference can be more than 10 percentage points.')
		insert into Quote_Of_The_Day values (N'If you have a problem meeting your debts, don�t try to hide away.  and speak to your creditors, particularly your bank, to find a way out of your problem. Don�t use debt consolidators/administrators. They will charge you far more interest and make your problem worse.')
		insert into Quote_Of_The_Day values (N'Beware of plastic. Store cards and credit cards may be convenient, but they are also an easy way of running up debt.')
		insert into Quote_Of_The_Day values (N'Don�t fly now, pay later. It is very depressing to be still paying for a holiday (or any other luxury) five years later, when you want another.')
		insert into Quote_Of_The_Day values (N'Try to repay more on your home loan than the minimum. For example, on a home loan of R100 000 at a mortgage bond rate of 15 percent over 20 years, your normal repayments will be R1 316.79. Increase the repayments by R100 and you will reduce your repayment period to 14 years and five months, and you will save R88 224.93 in interest repayments')
		insert into Quote_Of_The_Day values (N'Always netiate your interest rates. Shop around. A one-percent difference can have a significant effect. On a R100 000 mortgage bond over 20 years at 15 percent, you will repay R316 029 in total. At 14 percent, you will repay R298 444 � a saving of R17 584.')
		insert into Quote_Of_The_Day values (N'If you take out a home loan when interest rates are low, always ask yourself whether you will be able to afford the repayments if interest rates  up. If you are in doubt, take out a smaller loan.')
		insert into Quote_Of_The_Day values (N'Most mortgage bonds enable you to repay more than your set repayments and to borrow against what you have paid. This is useful not only to borrow money for other things at short notice, but also to use as a savings account. The effective interest you receive is much greater and there are no additional costs. Say, for instance, you need to put away money to pay school fees or provisional tax. �Save� the money in your mortgage bond until you need it, rather than in a low-interest bank savings account.')
		insert into Quote_Of_The_Day values (N'Get a pre-approval agreement on a mortgage bond before you start looking for a home. This will give you the advantage of being able to shop around for the best rate while you�re not under pressure and the buyer will be more willing to sell to you knowing that the money is available')
		insert into Quote_Of_The_Day values (N'A bank valuation of a property is not a guarantee that the building is structurally sound. If you suspect a problem, get a full structural survey before you enter any contractual agreement.')
		insert into Quote_Of_The_Day values (N'If you can afford a hamburger and Coke every day, you can afford life assurance. Life assurance is essential for anyone who has dependants.')
		insert into Quote_Of_The_Day values (N'You can reduce the amount you pay in short-term insurance by increasing the excess (the first portion of any claim, which you pay). A higher excess will mean lower premiums. However, you should keep the excess within affordable limits. Better still, build up savings equivalent to any excess you may be required to pay and earn interest on them.')
		insert into Quote_Of_The_Day values (N'When you change address, check whether your short-term insurance premiums could be reduced. Where you live can effect the level of your short-term insurance premiums')
		insert into Quote_Of_The_Day values (N'When making a short-term insurance claim, first find out what effect the claim will have on your no- claim bonus. If the claim (after payment of the excess) is relatively small, it may be better not to claim and keep your no-claim bonus intact.')
		insert into Quote_Of_The_Day values (N'No matter how much or how little money you have, start taking responsibility for what happens to it by drawing up a budget and taking control of your expenses and income. Then you can start planning for other things in your life such as your education, your family, your home, your car, your holidays, your retirement and so on.')
		insert into Quote_Of_The_Day values (N'Always think of your finances in terms of your needs, not your wants. Most acquisitions � cars, houses, boats and so on � are wants, not needs. Financial planning is just the opposite. If you look at it in terms of what you need, you will make far more informed decisions. Wants relate to your heart, while financial planning should come from your head.')
		insert into Quote_Of_The_Day values (N'My favourite pieces of financial advice are: Preserve your retirement fund payouts when you change jobs, and increase monthly payments to eliminate debts as quickly as possible')
		insert into Quote_Of_The_Day values (N'The privilege of a lifetime is being who you are.')
		insert into Quote_Of_The_Day values (N'where you , there you are')
		insert into Quote_Of_The_Day values (N'Contentment is more valuable than ld')
	end

print char(13) + '3. End Query InsertDefaultData Executed Successfully'