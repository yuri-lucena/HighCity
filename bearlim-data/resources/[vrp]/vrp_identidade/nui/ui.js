window.addEventListener('message', (event) => {
	let data = event.data
	if(data.type == 'open') {
		const nome = data.nome + ' ' + data.sobrenome;
		const emprego = data.emprego;
		const cargo = data.cargo;
		const carteira = data.carteira;
		const coins = data.coins;
		const vip = data.vip;
		const id = data.id;
		const documento = data.documento;
		const idade = data.idade;

		$('.name p').text(nome);
		$('.name h6 span').text(emprego);
		if(cargo) {
			$('.cargo p span').text(cargo);
		} else {
			$('.cargo').hide();
		}
		$('.carteira p').text('$'+carteira);
		$('.coins p').text(coins);
		$('.vip p').text(vip);
		$('.identidade p').text(id);
		$('.documento p').text(documento);
		$('.idade p').text(idade);
		
		$('#roxId').fadeIn('fast');
	}
	
	if(data.type == 'close') {
		$('#roxId').fadeOut('slow');
	}
});