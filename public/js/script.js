// ---------- MODAL ----------//
document.addEventListener('DOMContentLoaded', function() {
    // Recupera o JSON do elemento oculto
    var produtosData = document.getElementById('produtosData').textContent;
    var produtos = JSON.parse(produtosData);
    console.log(produtos);

    var modal = document.getElementById("myModal");
    var span = document.getElementsByClassName("close")[0];

    // Função para abrir o modal e preencher com dados do produto
    function openModal(id) {
        // Pegar os dados diretamente da lista de produtos.
        var produto = produtos.find(prod => prod.idProduto == id);

        // Preencher o modal com os dados do produto
        document.getElementById('modalId').textContent = produto.idProduto;
        document.getElementById('modalProdutoTitle').textContent = produto.nomeProduto;
        document.getElementById('modalProduto').textContent = produto.nomeProduto;
        document.getElementById('modalDescricao').textContent = produto.descricaoProduto;
        document.getElementById('modalCor').textContent = produto.corProduto;
        document.getElementById('modalQuantidade').textContent = produto.qtdEstoque;
        document.getElementById('modalCategoria').textContent = produto.categoria.categoria;
        document.getElementById('modalCodBarras').textContent = produto.codBarraProd;
        document.getElementById('modalLocalArmario').textContent = produto.localizacao.localArmario;
        document.getElementById('modalArmario').textContent = produto.localizacao.armario;
        document.getElementById('modalPrateleira').textContent = produto.localizacao.prateleira;

        modal.style.display = "block";
    }

    // Event listener para todos os botões de visualização
    document.querySelectorAll('.myModalBtn').forEach(function(btn) {
        btn.onclick = function() {
            var id = this.getAttribute('data-id');
            openModal(id);
        };
    });

    span.onclick = function() { modal.style.display = "none"; };

    window.onclick = function(event) {
        if (event.target == modal) { modal.style.display = "none"; }
    };
});
// ---------- MODAL ----------//