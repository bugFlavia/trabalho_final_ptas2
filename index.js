const express = require('express');
const path = require('path');
const Produto = require("./models/produto");
const cors= require('cors');
const app = express();

const port = process.env.PORT || 3003

app.use(cors());

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.json());
app.use(express.urlencoded({ extended: true}));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/produtos', async function(req, res){
  try {
    var produtos = await Produto.select();
    res.json(produtos.rows);
  } catch (error) {
    console.error('Erro ao buscar Produtos:', error);
    res.status(500).json({ error: 'Ocorreu um erro ao buscar Produtos' });
  }
});

app.post('/produtos', async function(req, res){
  try {
    var produto = await Produto.selectOne(req.body.id);
    res.json(produto.rows[0]);
  } catch (error) {
    console.error('Erro ao buscar Produtos:', error);
    res.status(500).json({ error: 'Ocorreu um erro ao buscar Produtos' });
  }
});

app.post('/produto', async function(req,res){
  try{
    var produto = req.body
    var produto = await Produto.insert(produto);
    res.json(produto.rows)
  }catch(error){
    console.log("error")
  }
});

app.put('/produto/:id', async function(req,res){
  try{
    var produto = await Produto.update(req.params.id, req.body)
    res.json(produto.rows)
  }catch(error){
    console.log("error")
  }
});

app.delete('/produtos', async function(req, res){
  try {
    var produto = await Produto.delete(req.body.id);
    res.json(produto.rows);
  } catch (error) {
    console.error('Erro ao atualizar Produto:', error);
    res.status(500).json({ error: 'Ocorreu um erro ao atualizar Produto' });
  }
});


app.listen(3003, function() {
  console.log(`app de Exemplo escutando na porta! ${3003}`)
});
