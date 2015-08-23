# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cooker = Cooker.create!([
            {email: "joao@joao.com", password: "12345678", password_confirmation: "12345678"},
            {email: "maria@maria.com", password: "12345678", password_confirmation: "12345678"},
            {email: "carlos@carlos.com", password: "12345678", password_confirmation: "12345678"},
            {email: "jose@jose.com", password: "12345678", password_confirmation: "12345678"},
            {email: "marcos@marcos.com", password: "12345678", password_confirmation: "12345678"},
            {email: "roberta@roberta.com", password: "12345678", password_confirmation: "12345678"}
          ])

cooker = Cooker.all
Profile.create!([
            {cooker_id: cooker[0].id, name: 'Joao', cep: '21323', adress: 'rua X', city: 'São Carlos', state: 'São Paulo', phone: '34242424'},
            {cooker_id: cooker[1].id, name: 'Maria', cep: '21323', adress: 'rua X', city: 'São Carlos', state: 'São Paulo', phone: '34242424'},
            {cooker_id: cooker[2].id, name: 'Carlos', cep: '21323', adress: 'rua X', city: 'São Carlos', state: 'São Paulo', phone: '34242424'},
            {cooker_id: cooker[3].id, name: 'José', cep: '21323', adress: 'rua X', city: 'São Carlos', state: 'São Paulo', phone: '34242424'},
            {cooker_id: cooker[4].id, name: 'Marcos', cep: '21323', adress: 'rua X', city: 'São Carlos', state: 'São Paulo', phone: '34242424'},
            {cooker_id: cooker[5].id, name: 'Roberta', cep: '21323', adress: 'rua X', city: 'São Carlos', state: 'São Paulo', phone: '34242424'}
          ])

Meal.create!([
            {cooker_id: cooker[0].id, name: 'Hamburguer de Tofu Defumado', description: 'Este hambúrguer vegano é super fácil de fazer e fica delicioso! É bem levinho, crocante por fora e macio por dentro, e ainda dá para você temperar com o que preferir, como orégano, curry, shoyu… Eu gosto com os temperos que ensinarei adiante.', category: 'vegano', adress: 'rua jacinto favoretto', participants_max: 5, participants_now: 0, deliver: false, price: '29', datetime: DateTime.now.to_date},
            {cooker_id: cooker[1].id, name: 'Bife de soja', description: 'Bife de Soja à Milanesa (vegana)', category: 'vegano', adress: 'rua 9 de julho', participants_max: 8, participants_now: 0, deliver: false, price: '29', datetime: DateTime.now.to_date},
            {cooker_id: cooker[2].id, name: 'Feijoada vegetariana', description: 'A feijoada vegetariana é o sonho de qualquer amante de comidas brasileiras que deseja saborear esse prato típico, ao mesmo tempo se mantendo fiel a seu estilo vegetariano.', category: 'vegano', adress: 'avenida independência', participants_max: 15, participants_now: 0, deliver: false, price: '29', datetime: DateTime.now.to_date},
            {cooker_id: cooker[3].id, name: 'Strogonoff de Soja', description: 'Receita campeã, todo mundo que prova quer de novo, é o prato que ofereço aos amigos não vegetarianos, eles aprovam!', category: 'vegano', adress: 'rua Jão IX', participants_max: 3, participants_now: 0, deliver: false, price: '29', datetime: DateTime.now.to_date},
            {cooker_id: cooker[4].id, name: 'Coxinha de Jaca', description: ' Para aqueles que achavam que nunca mais iriam comer uma coxinha depois de virar vegano, aí está a receita do paraíso! Massa de coxinha crocante recheada com jaca verde ou palmito de jaca.', category: 'vegano', adress: 'rua Dom Pedro I', participants_max: 2, participants_now: 0, deliver: false, price: '29', datetime: DateTime.now.to_date},
            {cooker_id: cooker[5].id, name: 'Souflé de legumes', description: 'Suflê sem leite, sem glúten e sem soja, delicioso', category: 'vegano', adress: 'rua XV de novembro', participants_max: 10, participants_now: 0, deliver: false, price: '29', datetime: DateTime.now.to_date}
          ])