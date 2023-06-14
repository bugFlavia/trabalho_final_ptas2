const express = require('express');
const path = require('path');
const Produto = require("./models/produto");
const cors= require('cors');
const app = express();
app.use(cors());

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.json());
app.use(express.urlencoded({ extended: true}));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/produtos', async function(req, res){
  try {
    var Produtos = await Produto.select();
    res.json(Produtos.rows);
  } catch (error) {
    console.error('Erro ao buscar Produtos:', error);
    res.status(500).json({ error: 'Ocorreu um erro ao buscar Produtos' });
  }
});

app.post('produtos', async function(req, res){
  try {
    var Produto = await Produto.selectOne(req.body.id);
    res.json(Produto.rows[0]);
  } catch (error) {
    console.error('Erro ao buscar Produtos:', error);
    res.status(500).json({ error: 'Ocorreu um erro ao buscar Produtos' });
  }
});

app.post('/produto', async function(req,res){
  try{
    var Produto = req.body
    var Produto = await Produto.insert(Produto);
    res.json(Produto.rows)
  }catch(error){
    console.log("error")
  }
})

app.delete('/produtos', async function(req, res){
  try {
    console.log(req.body.id)
    var Produto = await Produto.delete(req.body.id);
    res.json(Produto.rows);
  } catch (error) {
    console.error('Erro ao atualizar Produto:', error);
    res.status(500).json({ error: 'Ocorreu um erro ao atualizar Produto' });
  }
});


app.listen(3003, function() {
  console.log(`app de Exemplo escutando na porta! ${3003}`)
});
