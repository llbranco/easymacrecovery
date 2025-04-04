# Easy MacRecovery

Este projeto tem como objetivo simplificar o processo de recuperação do macOS utilizando o script easy_macrecovery.bat. O script permite ao usuário selecionar diferentes versões do macOS e baixar o firmware correspondente usando a ferramenta ```macrecovery.py``` .

---

![image](https://github.com/user-attachments/assets/4128fa12-a185-4ccf-9a43-b47d65e160a6)


## Como Usar?

### Requisitos:
- Python 3.x instalado
- [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
- `macrecovery.py` disponivel na pasta `Utilities\macrecovery` do OpenCore
- (Opcional) [OpCore-Simplify](https://github.com/lzhoang2801/OpCore-Simplify)

### Etapas:
1. Baixe [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
2. Baixe ou clone esse repositório
3. coloque o easy_macrecovery junto com a pasta do opencore
4. execute o script `easy_macrecovery.bat`
5. O script irá detectar automaticamente a versão do OpenCore e pedir para você escolher a versão do macOS para recuperação.
6. O script irá então executar o comando para baixar a versão de recuperação correspondente.
7. Prepare seu pendrive usando o Rufus.
   
![image](https://github.com/user-attachments/assets/9dee8949-df28-4bdb-bdd7-43ca6208305c)

9. Copie a pasta `OpenCore-x.x.x-RELEASE\Utilities\macrecovery\com.apple.recovery.boot` para a raiz do seu pendrive.
10. Copie a pasta `OpenCore-x.x.x-RELEASE\x64\EFI` para a raiz do seu pendrive.
11. Seu pendrive deverá ficar assim:

![image](https://github.com/user-attachments/assets/42d66574-594e-4320-9db7-e4980a818f4a)

Para uma melhor experiência, use o [OpCore-Simplify](https://github.com/lzhoang2801/OpCore-Simplify) para criar sua pasta EFI.

### Como funciona:
O script detecta automaticamente a pasta correspondente do OpenCore, permite selecionar a versão do macOS desejada e executa o comando `macrecovery.py` para baixar a recuperação do sistema.

---
objetivos do projeto (sem tempo estimado e sem ordem especifica):
- suporte a Shell Script Linux/Mac
- suporte a discos multiboot (multiplas versões de mac no mesmo pendrive)
- suporte a criação de pendrives com instalação de mac/linux/windows (possivelmente com ventoy ou E2B)

Made with love by @llbranco #llbranco

### random stuff
Keyboard customizer for macOS.
https://karabiner-elements.pqrs.org/
