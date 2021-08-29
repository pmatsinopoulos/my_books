ScrollSpy is a Twitter Bootstrap JavaScript plugin that, when used, automatically changes the highlighted
menu item according to the position in the document.

## A Page with a Menu

Let's start with a long HTML page with a menu.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scroll Spy Demo</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- Custom JavaScript code -->
    <script src="assets/javascripts/main.js"></script>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="main.html">Home</a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#introduction">Introduction</a></li>
            <li><a href="#origins">Origins</a></li>
            <li><a href="#creating-new-state-constitutions">State Constitutions</a></li>
            <li><a href="#military-hostilities-begin">Military Hostilities</a></li>
            <li><a href="#independence-and-union">Independence And Union</a></li>
            <li><a href="#more">More</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
      <h1 id="introduction">American Revolution History</h1>

      <h2>Introduction</h2>

      <p>
        The American Revolution was a political upheaval that took place between 1765 and 1783 during which colonists in the Thirteen American Colonies rejected the British monarchy and aristocracy, overthrew the authority of Great Britain, and founded the United States of America.
      </p>

      <p>
        Starting in 1765, members of American colonial society rejected the authority of the British Parliament to tax them and create other laws affecting them, without colonial representatives in the government. During the following decade, protests by colonists—known as Patriots—continued to escalate, as in the Boston Tea Party in 1773 during which patriots destroyed a consignment of taxed tea from the Parliament-controlled and favored East India Company.[1] The British responded by imposing punitive laws—the Coercive Acts—on Massachusetts in 1774, following which Patriots in the other colonies rallied behind Massachusetts. In late 1774 the Patriots set up their own alternative government to better coordinate their resistance efforts against Great Britain, while other colonists, known as Loyalists, preferred to remain aligned to the British Crown.
      </p>
      <p>
        Tensions escalated to the outbreak of fighting between Patriot militia and British regulars at Lexington and Concord in April 1775. The conflict then evolved into a global war, during which the Patriots (and later their French, Spanish, and Dutch allies) fought the British and Loyalists in what became known as the American Revolutionary War (1775–1783). Patriots in each of the thirteen colonies formed Provincial Congresses that assumed power from the old colonial governments and suppressed Loyalism, and from there built a Continental Army under the leadership of General George Washington. Claiming King George III's rule to be tyrannical and infringing the colonists' "rights as Englishmen", the Continental Congress declared the colonies free and independent states in July 1776. The Patriot leadership professed the political philosophies of liberalism and republicanism to reject monarchy and aristocracy, and proclaimed that all men are created equal. Congress rejected British proposals requiring allegiance to the monarchy and abandonment of independence.
      </p>

      <p>
        The British were forced out of Boston in 1776, but then captured and held New York City for the duration of the war. The British blockaded the ports and captured other cities for brief periods, but failed to defeat Washington's forces. In early 1778, following a failed patriot invasion of Canada, a British army was captured at the Battle of Saratoga, following which the French openly entered the war as allies of the United States. The war later turned to the American South, where the British captured an army at South Carolina, but failed to enlist enough volunteers from Loyalist civilians to take effective control. A combined American–French force captured a second British army at Yorktown in 1781, effectively ending the war in the United States. The Treaty of Paris in 1783 formally ended the conflict, confirming the new nation's complete separation from the British Empire. The United States took possession of nearly all the territory east of the Mississippi River and south of the Great Lakes, with the British retaining control of Canada and Spain taking Florida.[2][3]
      </p>

      <p>
        Among the significant results of the revolution was the creation of a new Constitution of the United States. The 'Three-Fifths Compromise' allowed the southern slaveholders to consolidate power and maintain slavery in America for another eighty years,[4] but through the expansion of voting rights and liberties over subsequent decades the elected government became responsible to the will of the people.[5] The new Constitution established a relatively strong federal national government that included an executive, a national judiciary, and a bicameral Congress that represented both states in the Senate and population in the House of Representatives.[6][7]
      </p>

      <p>
        Among the significant results of the revolution was the creation of a new Constitution of the United States. The 'Three-Fifths Compromise' allowed the southern slaveholders to consolidate power and maintain slavery in America for another eighty years,[4] but through the expansion of voting rights and liberties over subsequent decades the elected government became responsible to the will of the people.[5] The new Constitution established a relatively strong federal national government that included an executive, a national judiciary, and a bicameral Congress that represented both states in the Senate and population in the House of Representatives.[6][7]
      </p>

      <h2 id="origins">Origins</h2>

      <p>
        Historians typically begin their histories of the American Revolution with the British victory in the French and Indian War in 1763, which removed France as a major player in North American affairs. Lawrence Henry Gipson, the historian of the British Empire, states:
      </p>

      <p>
        It may be said as truly that the American Revolution was an aftermath of the Anglo-French conflict in the New World carried on between 1754 and 1763.[8]
      </p>

      <p>
        The Royal Proclamation of 1763 may have played a role in the separation of the United States from Great Britain as colonists at the time wanted to continue in the economically beneficial cultural practice of taking land for one's own livelihood as part of the drive west. The lands west of Quebec and west of a line running along the crest of the Allegheny mountains became Indian territory, temporarily barred to settlement (to the great disappointment of the land speculators of Virginia and Pennsylvania, who had started the Seven Years' War to gain those territories).
      </p>

      <p>
        For the prior history see Thirteen Colonies.
      </p>

      <h3>1764–1766: Taxes imposed and withdrawn</h3>

      <p>
        In 1764 Parliament passed the Currency Act to restrain the use of paper money that British merchants saw as a means to evade debt payments.[original research?] Parliament also passed the Sugar Act imposing customs duties on a number of articles. That same year Prime Minister George Grenville proposed to impose direct taxes on the colonies to raise revenue, but delayed action to see if the colonies would propose some way to raise the revenue themselves.[citation needed] None did, and in March 1765 Parliament passed the Stamp Act which imposed direct taxes on the colonies for the first time. All official documents, newspapers, almanacs and pamphlets—even decks of playing cards—were required to have the stamps.
      </p>

      <p>
        The colonists objected chiefly on the grounds not that the taxes were high (they were low),[9] but because they had no representation in the Parliament. Benjamin Franklin testified in Parliament in 1766 that Americans already contributed heavily to the defense of the Empire. He said local governments had raised, outfitted and paid 25,000 soldiers to fight France—as many as Britain itself sent—and spent many millions from American treasuries doing so in the French and Indian War alone.[10][11] Stationing a standing army in Great Britain during peacetime was politically unacceptable. London had to deal with 1,500 politically well-connected British officers who became redundant; it would have to discharge them or station them in North America.[12]
      </p>

      <p>
        In 1765 the Sons of Liberty formed. They used public demonstrations, boycott, violence and threats of violence to ensure that the British tax laws were unenforceable. While openly hostile to what they considered an oppressive Parliament acting illegally, colonists persisted in sending numerous petitions and pleas for intervention from a monarch to whom they still claimed loyalty. In Boston, the Sons of Liberty burned the records of the vice admiralty court and looted the home of the chief justice, Thomas Hutchinson. Several legislatures called for united action, and nine colonies sent delegates to the Stamp Act Congress in New York City in October 1765. Moderates led by John Dickinson drew up a "Declaration of Rights and Grievances" stating that taxes passed without representation violated their rights as Englishmen. Colonists emphasized their determination by boycotting imports of British merchandise.[13]
      </p>

      <p>
        The Parliament at Westminster saw itself as the supreme lawmaking authority throughout all British possessions and thus entitled to levy any tax without colonial approval.[14] They argued that the colonies were legally British corporations that were completely subordinate to the British parliament and pointed to numerous instances where Parliament had made laws binding on the colonies in the past.[15] They did not see anything in the unwritten British constitution that made taxes special[16] and noted that Parliament had taxed American trade for decades. Parliament insisted that the colonies effectively enjoyed a "virtual representation" like most British people did, as only a small minority of the British population elected representatives to Parliament.[17] Americans such as James Otis maintained the Americans were not in fact virtually represented.[18]
      </p>

      <p>
        In London, the Rockingham government came to power (July 1765) and Parliament debated whether to repeal the stamp tax or to send an army to enforce it. Benjamin Franklin made the case for repeal, explaining the colonies had spent heavily in manpower, money, and blood in defense of the empire in a series of wars against the French and Indians, and that further taxes to pay for those wars were unjust and might bring about a rebellion. Parliament agreed and repealed the tax (February 21, 1766), but in the Declaratory Act of March 1766 insisted that parliament retained full power to make laws for the colonies "in all cases whatsoever".[19] The repeal nonetheless caused widespread celebrations in the colonies.
      </p>

      <p>
        Briggs says unnamed modern American economic historians have challenged the view that Great Britain was placing a heavy burden on the North American colonies and have suggested the cost of defending them from the possibility of invasion by France or Spain was £400,000 – five times the maximum income from them. Briggs rejects the analysis, saying that issue was not invoked at the time.[20]
      </p>

      <h3>1767–1773: Townshend Acts and the Tea Act</h3>

      <p>
        In 1767 the Parliament passed the Townshend Acts, which placed duties on a number of essential goods including paper, glass, and tea and established a Board of Customs in Boston to more rigorously execute trade regulations. The new taxes were enacted on the belief that Americans only objected to internal taxes and not external taxes like custom duties. The Americans, however, argued against the constitutionality of the act because its purpose was to raise revenue and not regulate trade. Colonists responded by organizing new boycotts of British goods. These boycotts were less effective, however, as the Townshend goods were widely used.
      </p>

      <p>
        In February 1768 the Assembly of Massachusetts Bay issued a circular letter to the other colonies urging them to coordinate resistance. The governor dissolved the assembly when it refused to rescind the letter. Meanwhile, in June 1768 a riot broke out in Boston over the seizure of the sloop Liberty, owned by John Hancock, for alleged smuggling. Custom officials were forced to flee, prompting the British to deploy troops to Boston. A Boston town meeting declared no obedience was due to parliamentary laws and called for the convening of a convention. A convention assembled but only issued a mild protest before dissolving itself. In January 1769 Parliament responded to the unrest by reactivating the Treason Act 1543 which permitted subjects outside the realm to face trials for treason in England. The governor of Massachusetts was instructed to collect evidence of said treason, and although the threat was not carried out it caused widespread outrage.
      </p>

      <p>
        On March 5, 1770 a large mob gathered around a group of British soldiers. The mob grew more and more threatening, throwing snowballs, rocks and debris at the soldiers. One soldier was clubbed and fell.[21] There was no order to fire but the soldiers fired into the crowd anyway. They hit 11 people; three civilians died at the scene of the shooting, and two died after the incident. The event quickly came to be called the Boston Massacre. Although the soldiers were tried and acquitted (defended by John Adams), the widespread descriptions soon became propaganda to turn colonial sentiment against the British. This in turn began a downward spiral in the relationship between Britain and the Province of Massachusetts.[21]
      </p>

      <p>
        A new ministry under Lord North came to power in 1770 and Parliament withdrew all taxes except the tax on tea, giving up its efforts to raise revenue while maintaining the right to tax. This temporarily resolved the crisis and the boycott of British goods largely ceased, with only the more radical patriots such as Samuel Adams continuing to agitate.
      </p>

      <p>
        Two ships in a harbor, one in the distance. On board, men stripped to the waist and wearing feathers in their hair are throwing crates into the water. A large crowd, mostly men, is standing on the dock, waving hats and cheering. A few people wave their hats from windows in a nearby building.
        This 1846 lithograph by Nathaniel Currier was entitled "The Destruction of Tea at Boston Harbor"; the phrase "Boston Tea Party" had not yet become standard.[22]
      </p>

      <p>
        In June 1772, in what became known as the Gaspee Affair, American patriots including John Brown burned a British warship that had been vigorously enforcing unpopular trade regulations. The affair was investigated for possible treason, but no action was taken.
      </p>

      <p>
        In 1772 it became known that the Crown intended to pay fixed salaries to the governors and judges in Massachusetts. Samuel Adams in Boston set about creating new Committees of Correspondence, which linked Patriots in all 13 colonies and eventually provided the framework for a rebel government. In early 1773 Virginia, the largest colony, set up its Committee of Correspondence, on which Patrick Henry and Thomas Jefferson served.[23]
      </p>

      <p>
        A total of about 7000 to 8000 Patriots served on "Committees of Correspondence" at the colonial and local levels, comprising most of the leadership in their communities — Loyalists were excluded. The committees became the leaders of the American resistance to British actions, and largely determined the war effort at the state and local level. When the First Continental Congress decided to boycott British products, the colonial and local Committees took charge, examining merchant records and publishing the names of merchants who attempted to defy the boycott by importing British goods.[24]
      </p>

      <p>
        In 1773 private letters were published where Massachusetts Governor Thomas Hutchinson claimed the colonists could not enjoy all English liberties, and Lieutenant Governor Andrew Oliver called for the direct payment of colonial officials. The letters, whose contents were used as evidence of a systematic plot against American rights, discredited Hutchinson in the eyes of the people the Assembly petitioned for his recall. Benjamin Franklin, post-master general for the colonies, acknowledged that he leaked the letters which led to him being berated by British officials and fired from his job.
      </p>

      <p>
        Meanwhile, Parliament passed the Tea Act to lower the price of taxed tea exported to the colonies in order to help the East India Company undersell smuggled Dutch tea. Special consignees were appointed to sell the tea in order to bypass colonial merchants. The act was opposed not only by those who resisted the taxes but also by smugglers who stood to lose business. In most instances the consignees were forced to resign and the tea was turned back, but Massachusetts governor Hutchinson refused to allow Boston merchants to give into pressure. A town meeting in Boston determined that the tea would not be landed, and ignored a demand from the governor to disperse. On December 16, 1773 a group of men, led by Samuel Adams and dressed to evoke the appearance of American Indians, boarded the ships of the British East India Company and dumped £10,000 worth of tea from their holds (approximately £636,000 in 2008) into Boston Harbor. Decades later this event became known as the Boston Tea Party and remains a significant part of American patriotic lore.[25]
      </p>

      <h3>1774–1775: Intolerable Acts and the Quebec Act</h3>

      <p>
        The British government responded by passing several Acts which came to be known as the Intolerable Acts, which further darkened colonial opinion towards the British. They consisted of four laws enacted by the British parliament.[26] The first, the Massachusetts Government Act, altered the Massachusetts charter and restricted town meetings. The second Act, the Administration of Justice Act, ordered that all British soldiers to be tried were to be arraigned in Britain, not in the colonies. The third Act was the Boston Port Act, which closed the port of Boston until the British had been compensated for the tea lost in the Boston Tea Party. The fourth Act was the Quartering Act of 1774, which allowed royal governors to house British troops in the homes of citizens without requiring permission of the owner.[27]
      </p>

      <p>
        In response, Massachusetts patriots issued the Suffolk Resolves and formed an alternative shadow government known as the "Provincial Congress" which began training militia outside British-occupied Boston.[28] In September 1774, the First Continental Congress convened, consisting of representatives from each of the colonies, to serve as a vehicle for deliberation and collective action. During secret debates conservative Joseph Galloway proposed the creation of a colonial Parliament that would be able to approve or disapprove of acts of the British Parliament but his idea was not accepted. The Congress instead endorsed the proposal of John Adams that Americans would obey Parliament voluntarily but would resist all taxes in disguise. Congress called for a boycott beginning on 1 December 1774 of all British goods; it was enforced by new committees authorized by the Congress.[29]
      </p>

      <p>
        The Quebec Act of 1774 extended Quebec's boundaries to the Ohio River, shutting out the claims of the 13 colonies. By then, however, the Americans had little regard for new laws from London; they were drilling militia and organizing for war.[30]
      </p>

      <p>
        The British retaliated by confining all trade of the New England colonies to Britain and excluding them from the Newfoundland fisheries. Lord North advanced a compromise proposal in which Parliament would not tax so long as the colonies made fixed contributions for defense and to support civil government. This would also be rejected.
      </p>

      <h2 id="creating-new-state-constitutions">Creating New State Constitutions</h2>

      <p>
        Following the Battle of Bunker Hill in June 1775, the Patriots had control of Massachusetts outside the Boston city limits; the Loyalists suddenly found themselves on the defensive with no protection from the British army. In all 13 colonies, Patriots had overthrown their existing governments, closing courts and driving British officials away. They had elected conventions and "legislatures" that existed outside any legal framework; new constitutions were drawn up in each state to supersede royal charters. They declared that they were states now, not colonies.[31]
      </p>

      <p>
        On January 5, 1776, New Hampshire ratified the first state constitution. In May 1776, Congress voted to suppress all forms of crown authority, to be replaced by locally created authority. Virginia, South Carolina, and New Jersey created their constitutions before July 4. Rhode Island and Connecticut simply took their existing royal charters and deleted all references to the crown.[32] The new states were all committed to republicanism, with no inherited offices. They decided not only what form of government to create, and also how to select those who would craft the constitutions and how the resulting document would be ratified. But there would be no universal suffrage and real power, including the right to elect the future President would still lay in the hands of a few selected elites for many years. On 26 May 1776 John Adams wrote James Sullivan from Philadelphia;
      </p>

      <p>
        "Depend upon it, sir, it is dangerous to open so fruitful a source of controversy and altercation, as would be opened by attempting to alter the qualifications of voters. There will be no end of it. New claims will arise. Women will demand a vote. Lads from twelve to twenty one will think their rights not enough attended to, and every man, who has not a farthing, will demand an equal voice with any other in all acts of state. It tends to confound and destroy all distinctions, and prostrate all ranks, to one common level".[33][34]
      </p>

      <p>
        In states where the wealthy exerted firm control over the process, such as Maryland, Virginia, Delaware, New York and Massachusetts – the last-mentioned of these state's constitutions still being in force in the 21st century, continuously since its ratification on June 15, 1780 – the results were constitutions that featured:
      </p>

      <p>
        Substantial property qualifications for voting and even more substantial requirements for elected positions (though New York and Maryland lowered property qualifications);[31]
        Bicameral legislatures, with the upper house as a check on the lower;
        Strong governors, with veto power over the legislature and substantial appointment authority;
        Few or no restraints on individuals holding multiple positions in government;
        The continuation of state-established religion.
      </p>

      <p>
        In states where the less affluent had organized sufficiently to have significant power—especially Pennsylvania, New Jersey, and New Hampshire—the resulting constitutions embodied
      </p>

      <p>
        universal white manhood suffrage, or minimal property requirements for voting or holding office (New Jersey enfranchised some property owning widows, a step that it retracted 25 years later);
        strong, unicameral legislatures;
        relatively weak governors, without veto powers, and little appointing authority;
        prohibition against individuals holding multiple government posts;
      </p>

      <p>
        The radical provisions of Pennsylvania's constitution lasted only 14 years. In 1790, conservatives gained power in the state legislature, called a new constitutional convention, and rewrote the constitution. The new constitution substantially reduced universal white-male suffrage, gave the governor veto power and patronage appointment authority, and added an upper house with substantial wealth qualifications to the unicameral legislature. Thomas Paine called it a constitution unworthy of America.[6]
      </p>

      <h2 id="military-hostilities-begin">Military hostilities begin</h2>

      <p>
        Massachusetts was declared in a state of rebellion in February 1775 and the British garrison received orders to disarm the rebels and arrest their leaders, leading to the Battles of Lexington and Concord on 19 April 1775. The Patriots set siege to Boston, expelled royal officials from all the colonies, and took control through the establishment of Provincial Congresses. The Battle of Bunker Hill followed on June 17, 1775. While a British victory, it was at a great cost; about 1,000 British casualties from a garrison of about 6,000, as compared to 500 American casualties from a much larger force.[35][36] First ostensibly loyal to the king and desiring to govern themselves while remaining in the empire, the repeated pleas by the First Continental Congress for royal intervention on their behalf with Parliament resulted in the declaration by the King that the states were "in rebellion", and the members of Congress were traitors.
      </p>

      <p>
        In the winter of 1775, the Americans invaded Canada. General Richard Montgomery captured Montreal but a joint attack on Quebec was a total failure; many Americans were captured or died of smallpox.
      </p>

      <p>
        In March 1776, with George Washington as the commander of the new army, the Continental Army forced the British to evacuate Boston. The revolutionaries were now in full control of all 13 colonies and were ready to declare independence. While there still were many Loyalists, they were no longer in control anywhere by July 1776, and all of the Royal officials had fled.[37]
      </p>

      <p>
        In August 1775, George III declared Americans in arms against royal authority to be traitors to the Crown. Following their surrender at the Battles of Saratoga in October 1777, there were thousands of British and Hessian soldiers in American hands. Although Lord Germain took a hard line, the British generals on the scene never held treason trials; they treated captured enemy soldiers as prisoners of war.[38] The dilemma was that tens of thousands of Loyalists were under American control and American retaliation would have been easy. The British built much of their strategy around using these Loyalists.[39] Therefore, no Americans were put on trial for treason. The British maltreated the prisoners they held, resulting in more deaths to American sailors and soldiers than from combat operations.[39] At the end of the war, both sides released their surviving prisoners.[40]
      </p>

      <h2 id="independence-and-union">Independence And Union</h2>

      <p>
        In April 1776 the North Carolina Provincial Congress issued the Halifax Resolves, explicitly authorizing its delegates to vote for independence.[41] In May Congress called on all the states to write constitutions, and eliminate the last remnants of royal rule.
      </p>

      <p>
        By June nine colonies were ready for independence; one by one the last four—Pennsylvania, Delaware, Maryland and New York—fell into line. Richard Henry Lee was instructed by the Virginia legislature to propose independence, and he did so on June 7, 1776. On the 11th a committee was created to draft a document explaining the justifications for separation from Britain. After securing enough votes for passage, independence was voted for on July 2. The Declaration of Independence, drafted largely by Thomas Jefferson and presented by the committee, was slightly revised and unanimously adopted by the entire Congress on July 4, marking the formation of a new sovereign nation, which called itself the United States of America.[42]
      </p>

      <p>
        The Second Continental Congress approved a new constitution, the "Articles of Confederation," for ratification by the states on November 15, 1777, and immediately began operating under their terms. The Articles were formally ratified on March 1, 1781. At that point, the Continental Congress was dissolved and on the following day a new government of the United States in Congress Assembled took its place, with Samuel Huntington as presiding officer.[43][44]
      </p>

      <h2 id="more">More...</h2>

      <a href="https://en.wikipedia.org/wiki/American_Revolution">American Revolution on Wikipedia</a>
    </div>
  </body>
</html>
```

This page refers to a local `assets/javascripts/main.js` file for custom JavaScript. Consider this empty, for the time being. 
It also refers to a local `assets/stylesheets/main.css` file for custom CSS. Consdier that empty too. If you save the content of the
above page and load the page on your browser, you will see this:

![./images/Long Page with Top Navigation](./images/long-page-with-top-navigation.jpg)

The navigation bar HTML markup is already known to us from Twitter Bootstrap Part A. We have also learnt how to deal with the problem that
it hides the top content of the `body`. Here is what we have to have in our CSS file:

``` css
body {
    padding-top: 50px;
}
```
If you save the above and reload the page on your browser, then you will be able to see the top content of your page without that being
hidden by the navigation bar.

![./images/Visible Top Content](./images/long-page-with-top-navigation-visible-top-content.jpg)

Another problem that this page has and that we have already dealt with in chapter 23 of HTML and CSS section (Positioning), is the problem 
with content covered by the navigation bar when we click on the menu items. For example, click on the menu item `State Constitutions`. You will
see this:

![./images/Content Covered By Navigation Bar](./images/content-covered-when-clicking-on-menu-items.jpg)

We will solve that by adding the following `padding-top` and `margin-top` CSS properties to the `h1` and `h2` elements which are the HTML elements
of our page with the anchors the menu items link to.

``` css
body {
    padding-top: 50px;
}

h1, h2 {
    padding-top: 50px;
    margin-top: -50px;
}
```

If you save the above and reload the page on your browser, clicking on `State Constitutions` will display this:

![./images/Content Is Not Covered When Clicking On Menu Items](./images/content-is-not-covered-when-clicking-on-menu-items.jpg)

However, we want, when clicking on the `More` menu item, the page to bring its content at the top. This does not happen now. In order to achieve
that, we will add some bottom margin to the `body` of our page:

``` css
body {
    padding-top: 50px;
    margin-bottom: 900px;
}

h1, h2 {
    padding-top: 50px;
    margin-top: -50px;
}
```

If you save the above, reload your page and click on `More` menu item, you will get this:

![./images/Clicking on More Brings Content On Top](./images/clicking-on-more-brings-the-content-to-the-top.jpg)

## Showing the Active Section

The problem with the current page is that when we click on a menu item and the content is scrolled to that point, the corresponding menu item
does not become active. Also, the corresponding menu item does not become active if we just scroll the content from top to bottom, from section
to section.
 
Both of these problems can now be solved with the use of ScrollSpy, which is a Twitter Bootstrap JavaScript plugin.
 
1. We need to tell ScrollSpy which element contains the content and the navigation bar. Usually, this is the `body`. And we set the data attribute
`data-spy="scroll"`. 
2. We need to tell ScrollSpy which is the navigation bar element that contains the list with the menu items. In our case, this is the `div` with
id `navbar`. Hence, we have to add the `data-target="#navbar"` attribute to `body` element.
3. We also need to set the `position` attribute of the `body` element to have the value `relative`.
 
So, first go to the HTML page and turn this:
 
``` html
<body>
``` 

to this:

``` html
<body data-spy="scroll" data-target="#navbar">
```

and add the `position: relative` to the `body` element inside the CSS file.

Save all that stuff and reload the page on your browser. You will see that the first menu item is highlighted and then, when you scroll, 
according to the visible section of the page, the corresponding menu item is highlighted:

<div id="media-title-video-scroll-spy-in-action.mp4">Scroll Spy in Action</div>
<a href="https://player.vimeo.com/video/194359519"></a>          
          
## Activating Section Point

Sometimes, you may want the active section to appear highlighted on the menu, when the section start is earlier than the top of the page.
For example, you may want to activate a section when the section start is 200px from top of page. You can do that with the
data attribute `data-offset` which takes as value the number of pixels you want section to be activated from. 

Change this:

```
<body  data-spy="scroll" data-target="#navbar">
```

to this:

```
<body  data-spy="scroll" data-target="#navbar" data-offset="200">
```

save and reload the page on your browser. Then start scrolling. You will see the sections being activating before the section start reaches
the top of the page.

<div id="media-title-video-scroll-spy-with-data-offset.mp4">Activating Section before Start of Section Reaches Top of Page</div>
<a href="https://player.vimeo.com/video/194364043"></a>          
          
## How Does It Work?

Besides the correct data attributes that you need to set as described above (`data-spy`, `data-target` and optionally `data-offset`), you need
to make sure that.

1. Your menu items point to ids corresponding to the starts of the sections.
![./images/Menu Items Pointing To Start Of Sections](./images/scroll-spy-source-code-menu-items.jpg)
2. The starts of the sections need to have the corresponding/correct ids. For example:
``` html
<h2 id="military-hostilities-begin">Military hostilities begin</h2>
```

## Activating Using JavaScript

You may be in the need to activate Scroll Spy dynamically using JavaScript. So, instead of attaching specific data attributes on the 
`body` element, you do not add anything, but you call the following JavaScript code:
 
``` javascript
$('body').scrollspy({ target: '#navbar' });
```

Let's see that in action. Change the HTML `body` element to be:
 
``` html
<body>
```
 
Then update the `assets/javascripts/main.js` file to have the following content:

``` html
$(document).ready(function() {
    $('body').scrollspy({
        target: '#navbar'
    })
});
```

When you save all files and reload the page on your browser, you will still see the scroll spy working as before.

Note that you can also give `offset` property in the object that you literally construct and you pass to `.scrollspy()` method.

