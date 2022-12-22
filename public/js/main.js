





$('.post-cards .card-text').each(function() {
    
    var $this = $(this);

    if ($this.text().includes("overcast clouds")) {
        $this.parent().parent().parent().addClass("overcastclouds")
    }

    if ($this.text().includes("broken clouds")) {
        $this.parent().parent().parent().addClass("brokenclouds")
    }

    if ($this.text().includes("scattered clouds")) {
        $this.parent().parent().parent().addClass("scatteredclouds")
    }

    if ($this.text().includes("clear sky")) {
        $this.parent().parent().parent().addClass("clearsky")
    }

    if ($this.text().includes("mist")) {
        $this.parent().parent().parent().addClass("mist")
    }

    if ($this.text().includes("haze")) {
        $this.parent().parent().parent().addClass("haze")
    }

    if ($this.text().includes("few clouds")) {
        $this.parent().parent().parent().addClass("fewclouds")
    }
    

    
});