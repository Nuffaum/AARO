draw_self();

var novo_sprite;

if (seta == 1)
{
    // Pega o centro da câmera
    var centro_cam = camera_get_view_x(view_camera[0])
                   + camera_get_view_width(view_camera[0]) / 2;

    // Primeira metade da câmera = Caranguejo
    if (x < centro_cam)
    {
		if (tempo == nota.t)
		{
			if (nota.p == 0)
			{
				switch(nota.n)
				{
					case 1:
						novo_sprite = sCaranguejoDancaU;
						break;
					case 2:
						novo_sprite = sCaranguejoDancaR;
						break;
					case 3:
						novo_sprite = sCaranguejoDancaD;
						break;
					case 4:
						novo_sprite = sCaranguejoDancaL;
						break;
				}
			}
		}
    }
    // Segunda metade da câmera = Naira
    else
    {
        if (left)
        {
            novo_sprite = sNairaDancaL;
        }
        else if (up)
        {
            novo_sprite = sNairaDancaU;
        }
        else if (right)
        {
            novo_sprite = sNairaDancaR;
        }
        else if (down)
        {
            novo_sprite = sNairaDancaD;
        }
        else
        {
            novo_sprite = sNairaDancaI;
        }
    }

    // Se mudou de sprite, reinicia a animação
    if (sprite_id != novo_sprite)
    {
        sprite_id = novo_sprite;
        frame = 0;
        e_frame = 5;
    }

    // Controla a velocidade da animação
    if (e_frame > 0)
    {
        e_frame--;
    }

    if (e_frame <= 0)
    {
        e_frame = 5;

        // Idle fica em loop
        if (sprite_id == sNairaDancaI || sprite_id == sCaranguejoDancaI)
        {
            frame++;

            if (frame >= sprite_get_number(sprite_id))
            {
                frame = 0;
            }
        }
        // Outras animações tocam uma vez e param no último frame
        else
        {
            if (frame < sprite_get_number(sprite_id) - 1)
            {
                frame++;
            }
        }
    }

    // Desenha o personagem
    draw_sprite_ext(
        sprite_id,
        frame,
        x - 56,
        y,
        2,
        2,
        0,
        image_blend,
        1
    );
}