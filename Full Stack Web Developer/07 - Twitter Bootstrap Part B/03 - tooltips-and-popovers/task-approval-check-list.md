1. You need to make sure that your student demonstrates well knowledge of Twitter Bootstrap tooltips and popovers.
2. He should create a page like / similar to the one requested:
3. Here is a sample implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task - Tooltips &amp; Popovers</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/task.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- Custom JavaScript code -->
    <script src="assets/javascripts/task.js"></script>

  </head>
  <body>

    <div class="container">

      <h1>Drone (bee)</h1>

      <p class="lead">A <b>drone</b> is a male <abbr data-toggle="tooltip" title="Bees are flying insects closely related to wasps and ants">bee</abbr>
        that is the product of an unfertilized egg. Unlike the female
        <abbr data-toggle="tooltip" title="A worker bee is any female (eusocial) bee that lacks the full reproductive capacity">worker bee</abbr>,
        drones do not have stingers and do not participate in nectar and pollen gathering. A drone's primary role is to mate with a fertile queen
      </p>

      <h2>Drone Genetics</h2>

      <p>
        Drones carry only one type of allele
        <span class="glyphicon glyphicon-question-sign"
              tabindex="0" data-trigger="focus"
              data-toggle="popover" title="Allele"
              data-content="An <b>allele</b>, or <b>allel</b>, is one of a number of alternative forms of the same gene or same genetic locus.[1][2] Sometimes, different alleles can result in different observable phenotypic traits, such as different pigmentation. However, most genetic variations result in little or no observable variation"></span>
        at each chromosomal position, because they are
        haploid <span class="glyphicon glyphicon-question-sign" tabindex="1" data-trigger="focus" data-toggle="popover" title="Haploid and monoploid"
        data-content="The nucleus of a eukaryotic cell is <b>haploid</b> if it has a single set of chromosomes, each one not being part of a pair. By extension a cell may be called haploid if its nucleus is haploid, and an organism may be called haploid if its body cells (somatic cells) are haploid. The number of chromosomes in a single set is called the <b>haploid number</b>, given the symbol n."></span>
        (containing only one set of
        chromosomes
        <span class="glyphicon glyphicon-question-sign" tabindex="2" data-trigger="focus" data-toggle="popover" title="Chromosomes"
              data-content="A <b>chromosome</b> (from Greek: χρῶμα color and σῶμα body) is a packaged and organized structure containing most of the DNA of a living organism. DNA is not usually found on its own, but rather is structured by being wrapped around protein complexes called nucleosomes, which consist of proteins called histones."
            ></span> from the mother). During the development of eggs within a
        queen
        <span class="glyphicon glyphicon-question-sign" tabindex="3" data-trigger="focus" data-toggle="popover" title="Queen Bee"
        data-content="The term <b>queen bee</b> is typically used to refer to an adult, mated female that lives in a honey bee colony or hive; she is usually the mother of most, if not all, of the bees in the beehive."></span>,
        a diploid cell with 32 chromosomes divides to generate haploid cells called
        gametes <span class="glyphicon glyphicon-question-sign" tabindex="4" data-trigger="focus" data-toggle="popover" title="Gamete"
        data-content="A <b>gamete</b> (from Ancient Greek γαμετή gamete from gamein <e>to marry</e>) is a cell that fuses with another cell during fertilization (conception) in organisms that sexually reproduce."></span>
        with 16 chromosomes.
        The result is a haploid egg, with chromosomes having a new combination of alleles at the various
        loci <span class="glyphicon glyphicon-question-sign" tabindex="5" data-trigger="focus" data-toggle="popover" title="Locus (genetics)"
        data-content="A <b>locus</b> (plural <b>loci</b>), in genetics, is the specific location or position of a gene's DNA sequence, on a chromosome."></span>.
        This process is also called arrhenotokous parthenogenesis or simply
        arrhenotoky <span class="glyphicon glyphicon-question-sign" tabindex="6" data-trigger="focus" data-toggle="popover" title="Arrhenotoky"
        data-content="Arrhenotoky (from Greek -τόκος -tókos <e>birth of -</e> + ἄρρην árrhēn <e>male person</e>), also known as arrhenotokous parthenogenesis, is a form of parthenogenesis in which unfertilized eggs develop into males."></span>.
      </p>

      <div class="text-center">
        <img src="assets/images/drone-bee.jpg" alt="Drone Bee Image" id="drone-bee-image"/>
      </div>
    </div>

  </body>
</html>
```
with CSS
``` css
#drone-image {
    width: 100%;
    max-width: 400px;
}

body {
    margin-top: 50px;
}
```
and JavaScript
``` javascript
$(document).ready(function() {
    $('[data-toggle=popover]').popover({
        html: true
    });
    $('[data-toggle=tooltip]').tooltip({
        html: true
    })
});
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.


