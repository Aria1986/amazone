let panierTotal = document.getElementById('cart')

localStorage.clear()
function ajouterPanier(id){
    let panierStocke={}
    if(localStorage.getItem('nbArticles')){
        
        let quantite = parseInt(localStorage.getItem('nbArticles'))
        console.log(quantite)
        localStorage.setItem('nbArticles',quantite+1)
    }
    else localStorage.setItem('nbArticles',1)

    panierTotal.innerHTML = `<h6>${localStorage.getItem('nbArticles')}</h6>`
    if(localStorage.getItem('panier')){
        let panierStockeString = localStorage.getItem('panier')
        try {
            panierStocke = JSON.parse(panierStockeString)
        } catch (error) {
            console.error('Error parsing stored cart:', error);
            cart = {}; // Create an empty cart in case of parsing error
        }
        if(panierStocke.hasOwnProperty(id)){
            panierStocke[id] +=1
        }
        else panierStocke[id] = 1
    }
    else panierStocke[id] = 1
    localStorage.setItem('panier',JSON.stringify(panierStocke))
    console.log( panierStocke)
}
