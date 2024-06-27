//ALGORITIMO MERGESORT PRA ORDENAÇÃO DAS TABELAS
function mergeSort(arr, compare) {
    if (arr.length < 2) { return arr; }
    const middle = Math.floor(arr.length / 2);
    const left = arr.slice(0, middle);
    const right = arr.slice(middle);
    return merge(mergeSort(left, compare), mergeSort(right, compare), compare);
}

function merge(left, right, compare) {
    const result = [];
    while (left.length && right.length) {
        if (compare(left[0], right[0]) <= 0) { result.push(left.shift()); }
        else { result.push(right.shift()); }
    }
    return result.concat(left.slice()).concat(right.slice());
}

function compare(a, b, columnIndex, isNumeric) {
    let aValue = a.cells[columnIndex].innerText.trim();
    let bValue = b.cells[columnIndex].innerText.trim();
    
    // Convertendo para número se for uma coluna numérica
    if (isNumeric) {
        aValue = parseFloat(aValue) || 0;
        bValue = parseFloat(bValue) || 0;
    }
    
    // Comparação
    if (aValue < bValue) { return -1; }
    if (aValue > bValue) { return 1; }
    return 0;
}

function sortTable(columnIndex, isNumeric) {
    const table = document.querySelector('.sortTable tbody');
    const rows = Array.from(table.rows);
    const sortedRows = mergeSort(rows, (a, b) => compare(a, b, columnIndex, isNumeric));
    
    // Limpar e recriar as linhas ordenadas na tabela
    while (table.firstChild) { table.removeChild(table.firstChild); }
    sortedRows.forEach(row => table.appendChild(row));
}

// Adicionar evento de clique aos ícones de ordenação
document.querySelectorAll('.fas fa-sort').forEach((icon, index) => {
    icon.addEventListener('click', () => {
        const isNumeric = index === 4; // Define qual coluna é numérica
        sortTable(index, isNumeric);
    });
});