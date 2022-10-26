# Repositório para entrega do trabalho do bootcamp da DIO "Cloud DevOps Experience - Banco Carrefour"

## **DEFINIÇÕES**

* Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
* Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
* O dono de todos os diretórios criados será o usuário root;
* Todos os usuários terão permissão total dentro do diretório publico;
* Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
* Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
* Subir arquivo de script criado para a sua conta no GitHub.

---

## **ESTRUTURA**

### **DIRETÓRIOS**
    /public
    /adm
    /ven
    /sec

### **GRUPOS**
    GRP_ADM
    GRP_VEN
    GRP_SEC

### **USUÁRIOS**
#### ADM
    carlos
    maria
    joao

#### VEN
    debora
    sebastiana
    roberto

#### SEC
    josefina
    amanda
    rogerio

## OBSERVAÇÕES
Dependendo da versão do openssl o comando *-crypt* não funciona, desta forma, de acordo com a documentação [openssl](https://www.openssl.org/docs/man1.1.1/man1/openssl-passwd.html) é possível utilizar as seguintes criptografias em seu lugar:
* -1 para MD5 baseado em BSD

    ><s>useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_ADM</s>

    >useradd carlos -m -s /bin/bash -p $(openssl passwd -1 password) -G GRP_ADM

* -5 para SHA256
    ><s>useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_ADM</s>

    >useradd carlos -m -s /bin/bash -p $(openssl passwd -5 password) -G GRP_ADM

* -6 para SHA512
    ><s>useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_ADM</s>
    
    >useradd carlos -m -s /bin/bash -p $(openssl passwd -6 password) -G GRP_ADM