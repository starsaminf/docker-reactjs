# docker-reactjs
## Slide
https://slides.com/samuellr/reactjs-docker

## Pasos a seguir

Agregamos estas lineas al final de nuestro .bashrc o .zshrc dependiento el interprete de comandos que usemos.


```bash
alias npm='docker run --rm -it -u `id -u $USER` -v $(pwd):/src  -w /src -p 3000:3000 starsaminf/reactjs npm'

alias create-react-app='docker run --rm -it -u `id -u $USER` -v $(pwd):/src  -w /src starsaminf/reactjs create-react-app'

alias ng='docker run --rm -it -u `id -u $USER`  -v $(pwd):/src  -w /src -p  3000:3000 starsaminf/reactjs ng'

```
Para Angular
```bash
ng new proyect_name
cd proyect_name
ng serve --port 3000 --host 0.0.0.0
```


De esta forma ya podemos usar desde la consola npm o create-react-app y ni cuenta nos daremos que estamos usando docker

## Nota

Si tenemos ocupado el puerto 3000, podemos cambiar a otro puerto en este caso al puerto 3800


localhost:3800


```bash
alias npm='docker run --rm -it -u `id -u $USER` -v $(pwd):/src  -w /src -p 3800:3000 starsaminf/reactjs npm'

```
o al puerto 4000

localhost:4000


```bash
alias npm='docker run --rm -it -u `id -u $USER` -v $(pwd):/src  -w /src -p 4000:3000 starsaminf/reactjs npm'

```

## Update
Update available 5.6.0 → 6.0.1


