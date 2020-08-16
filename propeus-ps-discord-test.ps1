using module "./psc-discord-webhook.psm1";

$wh = "https://discordapp.com/api/webhooks/744341238756540431/_NimMk01vNMCIJSadHJPmloKOK8_kznBrMZE_w8iE8hP1IK8kgP-XaJZNCmV21_XpAqP"
$url_icon = "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
$url = "https://google.com"


# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message.username = "nome do bot"
# $message.content = "Altera o nome do bot"
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message.avatar_url = "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
# $message.content = "Altera o icone do bot"
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message.content = "Conteudo"
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message= $message.SetUsername("nome do bot")
# $message= $message.SetContent("Altera o nome do bot por função")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message= $message.SetAvatarUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
# $message= $message.SetContent("Altera o avatar do bot por função")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message= $message.SetContent("Conteudo")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message = $message.AddEmbed("titulo")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message = $message.AddEmbed("titulo","descricao")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message = $message.AddEmbed("titulo com link","descricao","https://github.com/Propeus/psc-discord-webhook/")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message = $message.AddEmbed("titulo com link com cor vermelho","descricao","https://github.com/Propeus/psc-discord-webhook/","Red")
# $metadata.SendMessage();

# $cor = Get-DiscordColor -nameColor "Red"
# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message = $message.AddEmbed("titulo com embed vermelho","descricao", $cor)
# $metadata.SendMessage();

# $cor = Get-DiscordColor -nameColor "Red"
# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message = $message.AddEmbed("titulo com embed vermelho","descricao", $cor)
# Write-Host $message.Generate();

### using module
# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# $message.username = "nome do bot"
# $message.content = "Altera o nome do bot"
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# $message.avatar_url = "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
# $message.content = "Altera o icone do bot"
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# $message.content = "Conteudo"
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# $message= $message.SetUsername("nome do bot")
# $message= $message.SetContent("Altera o nome do bot por função")
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# $message= $message.SetAvatarUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
# $message= $message.SetContent("Altera o avatar do bot por função")
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# $message= $message.SetContent("Conteudo")
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# [DiscordEmbed]$embed = [DiscordEmbed]::new("titulo")
# $message.embeds.Add($embed)
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# [DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao")
# $message.embeds.Add($embed)
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# [DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao","https://github.com/Propeus/psc-discord-webhook/")
# $message.embeds.Add($embed)
# $metadata.SendMessage();

# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# [DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao","https://github.com/Propeus/psc-discord-webhook/","Red")
# $message.embeds.Add($embed)
# $metadata.SendMessage();

# $cor = [Colors]::Red
# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# [DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao", $cor)
# $message.embeds.Add($embed)
# $metadata.SendMessage();

# $cor = [Colors]::Red
# [DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
# [DiscordMessage]$message= $metadata.GoMessage();
# [DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao", $cor)
# $message.embeds.Add($embed)
# Write-Host $message.Generate();

### DiscordEmbed ###
# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed.title = "titulo"
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed.description = "descricao"
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed.title = "titulo"
# $embed.url = "https://github.com/Propeus/psc-discord-webhook/"
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTitle("titulo")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetDescription("descricao")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTitle("titulo")
# $embed= $embed.SetUrl("https://github.com/Propeus/psc-discord-webhook/")
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTitle("titulo");
# $embed= $embed.SetColorName("Red");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetAutor("nome autor");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetAutor("nome autor","https://github.com/Propeus/psc-discord-webhook/");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetAutor("nome autor","https://github.com/Propeus/psc-discord-webhook/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetFooter("Texto do footer");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetFooter("Texto do footer","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTimestamp((Get-Date));
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTimestampNow();
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.AddField("Nome","valor");
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $embed= $message.GoNewEmbed();
# $embed= $embed.AddField("Nome","valor",$true);
# $embed= $embed.AddField("Nome","valor",$true);
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message= $message.SetUsername("Titulo da mensagem")
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTitle("Titulo do embed com link")
# $metadata.SendMessage();
# $embed= $embed.SetDescription("Descrição do embed")
# $metadata.SendMessage();
# $embed= $embed.SetUrl("https://github.com/Propeus/psc-discord-webhook/")
# $metadata.SendMessage();
# $embed= $embed.SetColorName("Yellow");
# $metadata.SendMessage();
# $embed= $embed.SetAutor("Nome do autor");
# $metadata.SendMessage();
# $embed= $embed.SetAutor("Nome do autor com link","https://github.com/Propeus/");
# $metadata.SendMessage();
# $embed= $embed.SetAutor("Nome do autor com link","https://github.com/Propeus/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $metadata.SendMessage();
# $embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
# $metadata.SendMessage();
# $embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $metadata.SendMessage();
# $embed= $embed.SetFooter("Texto do footer")
# $metadata.SendMessage();
# $embed= $embed.SetFooter("Texto do footer com icone","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
# $metadata.SendMessage();
# $embed= $embed.SetTimestampNow();
# $metadata.SendMessage();
# $embed= $embed.AddField("Versao","1.0");
# $metadata.SendMessage();
# $embed= $embed.AddField("Liguagem","Powershell",$True);
# $embed= $embed.AddField("Edição do PS","Core",$True);
# $metadata.SendMessage();

# $metadata = New-DiscordMetadata -url_webhook $wh
# $message= $metadata.GoMessage();
# $message= $message.SetUsername("Titulo da mensagem")
# $embed= $message.GoNewEmbed();
# $embed= $embed.SetTitle("Titulo do embed com link")
# $embed= $embed.SetDescription("Descrição do embed")
# $embed= $embed.SetUrl("https://github.com/Propeus/psc-discord-webhook/")
# $embed= $embed.SetColorName("Yellow");
# $embed= $embed.SetAutor("Nome do autor com link e icone","https://github.com/Propeus/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
# $embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
# $embed= $embed.SetFooter("Texto do footer")
# $embed= $embed.SetFooter("Texto do footer com icone","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
# $embed= $embed.SetTimestampNow();
# $embed= $embed.AddField("Versao","1.0");
# $embed= $embed.AddField("Liguagem","Powershell",$True);
# $embed= $embed.AddField("Edição do PS","Core",$True);
# $metadata.SendMessage();

$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage().SetUsername("Titulo da mensagem")
$embed= $message.GoNewEmbed().SetTitle("Titulo do embed com link").SetDescription("Descrição do embed").SetUrl("https://github.com/Propeus/psc-discord-webhook/").SetColorName("Yellow").SetAutor("Nome do autor com link e icone","https://github.com/Propeus/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetFooter("Texto do footer com icone","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetTimestampNow().AddField("Versao","1.0").AddField("Liguagem","Powershell",$True).AddField("Edição do PS","Core",$True);
$metadata.SendMessage();
