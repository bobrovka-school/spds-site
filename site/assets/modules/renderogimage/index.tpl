
<link rel="stylesheet" href="<?= MODX_SITE_URL ?><?= $this->path ?>css/main.min.css?<?= $this->getHash('css/main.min.css') ?>">
<div class="container">
	<h1 class="text-center"><i class="fa fa-image"></i>Генератор Open Graph Image</h1>
	<div class="app" id="app">
		<div class="canvas_overlay">
			<canvas class="cnvs" width="1144" height="509"></canvas>
		</div>
		<div class="tools_overlay">
			<div class="btn_container">
				<textarea class="input post_text" placeholder="Текст поста" cols="30" rows="3">Текст и лого можно двигать</textarea>
			</div>
			<h2 class="text-center">Шрифт</h2>
			<div>
				<div class="btn_container">
					<div><span>Имя</span>
						<select class="input_select_font_family"></select>
					</div>
					<div><span>Стиль</span>
						<select class="input_select_fontweight">
							<option value="normal" selected>Regular</option>
							<option value="bold">Bold</option>
						</select>
					</div>
					<div><span>Размер</span>
						<select class="input_fontsize">
							<option value="18">18</option>
							<option value="20">20</option>
							<option value="22">22</option>
							<option value="24">24</option>
							<option value="26">26</option>
							<option value="28">28</option>
							<option value="30">30</option>
							<option value="32">32</option>
							<option value="34">34</option>
							<option value="36">36</option>
							<option value="38">38</option>
							<option value="40">40</option>
							<option value="42">42</option>
							<option value="44">44</option>
							<option value="46">46</option>
							<option value="48" selected>48</option>
							<option value="50">50</option>
							<option value="52">52</option>
							<option value="54">54</option>
							<option value="56">56</option>
							<option value="58">58</option>
							<option value="60">60</option>
							<option value="62">62</option>
							<option value="64">64</option>
							<option value="66">66</option>
							<option value="68">68</option>
							<option value="70">70</option>
							<option value="72">72</option>
							<option value="74">74</option>
							<option value="76">76</option>
							<option value="78">78</option>
							<option value="80">80</option>
							<option value="82">82</option>
							<option value="84">84</option>
							<option value="86">86</option>
							<option value="88">88</option>
							<option value="90">90</option>
						</select>
					</div>
				</div>
				<div class="btn_container">
					<div><span>Цвет</span>
						<input class="input input_color input_select_textcolor" type="color" value="#ffffff">
					</div>
					<div><span>Тень</span>
						<input class="input input_color input_select_textoutline" type="color" value="#000000">
					</div>
					<div><span>Обводка</span>
						<input class="input_select_linewidth" type="range" min="0" max="50" step="1" value="4">
					</div>
				</div>
			</div>
			<h2 class="text-center">Фото</h2>
			<div class="btn_container">
				<div>
					<button class="btn btn_green btn_loadimage">Загрузить фото</button>
				</div>
				<div><span>Фон:</span>
					<input class="input input_color input_select_bgcolor" type="color">
				</div>
				<div><span>Затенить:</span>
					<input class="input_overlay_alpha" type="range" min="0" max="1" step="0.01" value="0.2">
				</div>
			</div>
			<div class="btn_container">
				<div class="flex-column-center">
					<button class="btn btn_green download">Сохранить на компьютер</button>
				</div>
			</div>
			<input class="hidden image_src_input" type="file" accept="image/png,image/jpeg">
		</div>
	</div>
</div>
<script src="<?= MODX_SITE_URL ?><?= $this->path ?>js/editor.min.js?<?= $this->getHash('js/editor.min.js') ?>"></script>
<script>var params = {canvas: 'canvas.cnvs',width: 510,height: 228,bgcolor: '#444444',fontfamily: 'Calibri',fontweight: 'normal',linewidth: 4,fonts: [{name: 'Calibri',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/Calibri-Regular.ttf)',style: 'normal',weight: '400'},{name: 'Calibri',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/Calibri-Bold.ttf)',style: 'normal',weight: '700'},{name: 'PT Sans',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/PTSans-Regular.ttf)',style: 'normal',weight: '400'},{name: 'PT Sans',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/PTSans-Bold.ttf)',style: 'normal',weight: '700'},{name: 'Oswald',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/Oswald-Regular.ttf)',style: 'normal',weight: '400'},{name: 'Muller',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/MullerRegular.ttf)',style: 'normal',weight: '400'},{name: 'Muller',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/MullerBold.ttf)',style: 'normal',weight: '700'},{name: 'Ruslan Display',url: 'url(<?= MODX_SITE_URL ?><?= $this->path ?>fonts/RuslanDisplayRegular.ttf)',style: 'normal',weight: '400'}]};var app = new application(params);app.start();</script>