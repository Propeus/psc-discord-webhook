# DiscordEmbedField
Classe que define um campo para a embed

* Construtor
  * DiscordEmbedField([string]$name, [string]$value)
  * DiscordEmbedField([string]$name, [string]$value, [bool]$inline)
* Propriedades
  * name
  * value
  * inline
* Metodos
  * [DiscordEmbedField]SetName([string]$name) 
  * [DiscordEmbedField]SetValue([string]$value) 
  * [DiscordEmbedField]SetInline([bool]$inline) 

## Propriedades
### name
* Descrição: Nome do campo da embed
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### value
* Descrição: Valor do campo da embed
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### inline
* Descrição: Define o campo em linha
* Tipo: string
* Obrigatório: Não
* Valor padrão: $False

## Metodos

### SetName
* Descrição: Nome do campo da embed
* Retorno: DiscordEmbedField
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do campo a ser definido
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetValue
* Descrição: Valor do campo da embed
* Retorno: DiscordEmbedField
* Estático: Não
* Parametros:
  * url
    * Descrição: Valor do campo a ser definido
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetInline
* Descrição: Define o campo em linha
* Retorno: DiscordEmbedField
* Estático: Não
* Parametros:
  * url
    * Descrição: Flag para definir campo em linha
    * Tipo: bool
    * Obrigatório: Nao
    * Valor padrão: N/A

## Exemplos

### cmdlet

Define nome do campo por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$field= $embed.GoNewField();
$field = $field.SetName("Nome do campo");
$metadata.SendMessage();
```

Define valor do campo e link por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$field= $embed.GoNewField();
$field = $field.SetValue("Valor do campo");
$metadata.SendMessage();
```

Define flag em linha do campo por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$field= $embed.GoNewField();
$field = $field.SetInline($True);
$metadata.SendMessage();
```

Define nome do campo por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$field= $embed.GoNewField();
$field.name= "Nome do campo";
$metadata.SendMessage();
```

Define valor do campo e link por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$field= $embed.GoNewField();
$field.value= "Valor do campo";
$metadata.SendMessage();
```

Define flag em linha do campo por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$field= $embed.GoNewField();
$field.inline = $True;
$metadata.SendMessage();
```

Adiciona novo campo por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.AddField("Nome do campo", "Valor do campo");
$metadata.SendMessage();
```

Adiciona novo campo em linha por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.AddField("Nome do campo", "Valor do campo",$True);
$metadata.SendMessage();
```

### using module

Define nome do campo por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= $embed.GoNewField();
$field = $field.SetName("Nome do campo");
$metadata.SendMessage();
```

Define valor do campo e link por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= $embed.GoNewField();
$field = $field.SetValue("Valor do campo");
$metadata.SendMessage();
```

Define flag em linha do campo por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= $embed.GoNewField();
$field = $field.SetInline($True);
$metadata.SendMessage();
```

Define nome do campo por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= $embed.GoNewField();
$field.name= "Nome do campo";
$metadata.SendMessage();
```

Define valor do campo e link por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= $embed.GoNewField();
$field.value= "Valor do campo";
$metadata.SendMessage();
```

Define flag em linha do campo por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= $embed.GoNewField();
$field.inline = $True;
$metadata.SendMessage();
```

Adiciona novo campo por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.AddField("Nome do campo", "Valor do campo");
$metadata.SendMessage();
```

Adiciona novo campo em linha por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.AddField("Nome do campo", "Valor do campo",$True);
$metadata.SendMessage();
```

Adiciona novo campo por construtor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= [DiscordEmbedField]::new("Nome do campo", "Valor do campo");
$embed.fields.Add($field)
$metadata.SendMessage();
```

Adiciona novo campo em linha por construtor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field= [DiscordEmbedField]::new("Nome do campo", "Valor do campo",$True);
$embed.fields.Add($field)
$metadata.SendMessage();
```

Obter campo pelo indice
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedField]$field1= [DiscordEmbedField]::new("Nome do campo 1", "Valor do campo 1",$True);
[DiscordEmbedField]$field2= [DiscordEmbedField]::new("Nome do campo 2", "Valor do campo 2",$True);
$embed.fields.Add($field1)
$embed.fields.Add($field2)
$field1= $embed.GoIndexField(0);
$field1 = $field1.SetInline($True);
$field2 = $field2.SetInline($True);
$metadata.SendMessage();
```