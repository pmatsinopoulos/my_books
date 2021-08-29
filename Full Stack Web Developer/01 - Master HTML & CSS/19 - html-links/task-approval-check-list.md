1. The student should create 4 pages and a CSS file like the following:


`main.html` page

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Site With Many Pages - Task</title>
    <link rel="stylesheet" href="stylesheets/main.css" type="text/css">
  </head>

  <body>

    <div id="navigation">
      <a href="main.html" class="active-page">Products</a>
      <a href="sections/pricing.html">Pricing</a>
      <a href="sections/contact.html">Contact</a>
      <a href="sections/about.html">About</a>
    </div>

    <div id="products">
      <h2>Products</h2>

      <p>
        Perovskia atriplicifolia (/pəˈrɒvskiə ætrɪplɪsɪˈfoʊliə/), commonly called Russian sage, is a flowering herbaceous perennial plant
        and subshrub. Although not a member of Salvia, the genus of other plants commonly called sage, it is closely related to them.
        It has an upright habit, typically reaching 0.5–1.2 m (1 ft 8 in–3 ft 11 in) tall, with square stems and grey-green leaves that
        yield a distinctive odor when crushed. It is best known for its flowers. Its flowering season extends from mid-summer to late October,
        with blue to violet blossoms arranged into showy, branched panicles.
      </p>

    </div>

  </body>
</html>
```

`sections/pricing.html`

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Taxonomy Chapter</title>
    <link rel="stylesheet" href="../stylesheets/main.css" type="text/css">
  </head>

  <body>

    <div id="navigation">
      <a href="../main.html">Products</a>
      <a href="pricing.html" class="active-page">Pricing</a>
      <a href="contact.html">Contact</a>
      <a href="about.html">about</a>
    </div>

    <div id="pricing">
      <h2>Pricing</h2>

      <p>
        Perovskia atriplicifolia was described by George Bentham in 1848, based on a specimen collected by William Griffith in Afghanistan,[1]
        now preserved at the Kew Gardens herbarium as the species's holotype.[2] The specific epithet atriplicifolia means "with leaves like Atriplex",
        [3] referring to its similarity to saltbush.[4] Commonly known as Russian sage, P. atriplicifolia is neither native to Russia nor a member of
        Salvia,[5] the genus generally referred to as sage.[6]
      </p>

      <p>
        A Chinese population was described as a separate species in 1987 and given the name Perovskia pamirica,[7] but has since been considered
        synonymous with P. atriplicifolia.
      </p>

      <p>
        Within the family Lamiaceae, the large genus Salvia had long been believed monophyletic, based on the structure of its stamina.
        Several smaller genera, including Dorystaechas, Perovskia, and Meriandra were also included in tribe Mentheae, but were thought
        more distantly related. In 2004, a molecular phylogenetics study based on two cpDNA genes (rbcL and trnL-F) demonstrated that
        Salvia is not monophyletic, but comprises three identifiable clades. Clade I is more closely related to Perovskia than to other
        members of Salvia.[11]
      </p>

      <p>
        P. atriplicifolia has been the subject of subsequent studies seeking to clarify the relationships within Mentheae. Further research
        combined palynological analysis of pollen grains with rbcL sequencing to provide additional support for the relationship between
        Perovskia and Salvia clade I. It also distinguished between P. atriplicifolia and P. abrotanoides, while confirming their close
        relationship.[12] A subsequent multigene study (four cpDNA markers and two nrDNA markers) redrew parts of the Mentheae cladogram,
        making Rosmarinus a sister group to Perovskia.
      </p>

      <p>
        Several cultivars of P. atriplicifolia have been developed. They are primarily distinguished by the height of mature plants and the depth
        of the leaf-margin incisions.[13] Many of these cultivars, especially those with deeply incised leaves, may actually be hybrids of P.
        atriplicifolia and P. abrotanoides.[13][14] In that context, some may be referred to by the hybrid name P. ×hybrida.[14][15]
      </p>

      <p>
        The most common cultivar,[16] 'Blue Spire', is among those suspected of being a hybrid.[17][18] It was selected from German plantings
        by the British Notcutts Nurseries, and first exhibited in 1961.[19][20] 'Blue Spire' grows to approximately 1.2 m (3 ft 11 in), and
        has large, darker blue flowers.[5][17] In 1993, it received the Royal Horticultural Society's Award of Garden Merit.[21]
      </p>

      <p>
        'Filigran' reaches a height of 1.2 to 1.3 m (3 ft 11 in to 4 ft 3 in); this tall, sturdy cultivar's name is German for filigree,
        in reference to its lacy, fern-like foliage.[5][19] 'Little Spire' is shorter, with a mature height of only 0.6 m (2 ft 0 in).[16][22]
        'Longin' is similar in height to 'Blue Spire' but more upright.[5] Allan Armitage established the late-flowering cultivar 'Mystery of
        Knightshayes' from a plant at Knightshayes Court.[19] Other cultivars include 'Blue Haze', 'Blue Mist', 'Hybrida' (also called 'Superba'),
        'Lace', 'Lisslit', 'Rocketman', and 'WALPPB'
      </p>

    </div>

  </body>

</html>
```

`sections/contact.html`

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Description Chapter</title>
    <link rel="stylesheet" href="../stylesheets/main.css" type="text/css">
  </head>

  <body>
    <div id="navigation">
      <a href="../main.html">Products</a>
      <a href="pricing.html">Pricing</a>
      <a href="contact.html" class="active-page">Contact</a>
      <a href="about.html">About</a>
    </div>

    <div id="contact">
      <h2>Contact</h2>

      <p>
        Perovskia atriplicifolia is a deciduous perennial subshrub with an erect to spreading habit.[13][27] Superficially, it resembles a much
        larger version of lavender.[28] Multiple branches arise from a shared rootstalk,[8] growing to a height of 0.5–1.2 m (1 ft 8 in–3 ft 11 in),
        [8][22] with occasional specimens reaching 1.5 m (4 ft 11 in).[4] The mature plant may be 0.6–1.2 m (2 ft 0 in–3 ft 11 in) across.[4]
        The rigid stems are square in cross-section,[4] and are covered by a indumentum formed by stellate, or star-shaped, trichomes and oil droplets.[27]
        Especially during autumn, these hairs give the stems a silvery appearance.[29]
      </p>

      <p>
        The grayish-green leaves are arranged in opposite pairs,[13][30] and attached to the stems by a short petiole.[27] They are generally 3–5 cm
        (1.2–2.0 in) long and 0.8–2 cm (0.3–0.8 in) wide,[27] although narrower in some populations.[8] The overall leaf shape is oblate, a rounded
        shape longer than it is wide, to lanceolate, shaped like the head of a lance.[27] They are pinnatipartite,[8] with a deeply incised
        leaf margin that may be either wavy or sharp-toothed; even within a single community of P. atriplicifolia, there can be considerable
        variation in the details of leaf shape.[27] Leaves near the top of branches may merge into bracts.[27] The foliage is aromatic,
        especially when crushed,[4] with a fragrance described as sage-like,[5] a blend of sage and lavender,[16] or like turpentine.[31]
      </p>

      <p>
        The flowering season of P. atriplicifolia can be as long as June through October,[27] although populations in some parts of its range,
        such as China, may bloom in a much more restricted period.[8] The inflorescence is a showy panicle, 30–38 cm (12–15 in) long,[4] with
        many branches.[32] Each of these branches is a raceme, with the individual flowers arranged in pairs called verticillasters.[8] Each
        flower's calyx is purple, densely covered in white or purple hairs, and about 4 mm long. The corolla is tube-shaped, formed from a
        four-lobed upper lip and a slightly shorter lower lip; the blue or violet blue petals are about 1 cm long.[8][32] The style has been
        reported in both an exserted—extending beyond the flower's tube—form and one contained within the flower;[32] all known examples of P.
        atriplicifolia in cultivation have exserted styles.[13] Gardening author Neil Soderstrom describes the appearance of the flowers from a
        distance as "like a fine haze or fog".[33]
      </p>
      <p>
        Fruits develop about a month after flowering,[8] and consist of dark brown oval nutlets, about 2 mm × 1 mm.
      </p>

    </div>

  </body>

</html>
```

`sections/about.html`

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Contact Section</title>
    <link rel="stylesheet" href="../stylesheets/main.css" type="text/css">
  </head>

  <body>
    <div id="navigation">
      <a href="../main.html">Products</a>
      <a href="pricing.html">Pricing</a>
      <a href="contact.html">Contact</a>
      <a href="about.html" class="active-page">About</a>
    </div>

    <div id="about">
      <h2>About</h2>

      <p>
        Widely distributed across Asia in its native range, Perovskia atriplicifolia grows in western China,[4] Pakistan, Afghanistan, Iran,[37]
        Turkey, and parts of eastern Europe.[38] It is found in steppes and on hillsides,[38] and grows at higher elevations in mountainous regions,
        including the Himalayas.[39] It has been recorded at 10,000 ft (3,000 m) of altitude in the Karakoram.[40] In Pakistan's Quetta district,
        it is often found in association with the grass Chrysopogon aucheri,[41] and may serve as an indicator species for soils with low calcium
        carbonate and chloride availability.[42] The harsh habitats preferred by P. atriplicifolia are comparable to the sagebrush steppe of North America.[43]
      </p>

      <p>
        In parts of its range, such as the Harboi, these steppe ecosystems are employed as rangeland for grazing animals such as sheep and goats, although
        this forage is generally of poor nutritional quality. P. atriplicifolia can serve as an important source of phosphorus and zinc,[44] despite being
        high in poorly-digested material such as neutral detergent fiber and lignin
      </p>
    </div>

  </body>

</html>
```

And the CSS file:

``` css
a {
    text-decoration: none;
    color: #5F5F5F;
    padding: 10px 20px;
}

a:hover {
    background-color: black;
    color: white;
}

.active-page {
    background-color: #73AD21;
    color: white;
}
```

All aspects of correct HTML code should be checked:

* indentation
* meta tag
* title
* e.t.c.

