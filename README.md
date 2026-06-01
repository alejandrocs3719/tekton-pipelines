# tekton-pipelines

Elementos técnicos del Trabajo Fin de Máster "Diseño de una arquitectura DevSecOps para la automatización y securización del ciclo de vida del software en entornos cloud-native" (UPM, 2026).

## Ficheros

- **`gitlab-ci-new.yml`** - Pipeline de GitLab CI/CD (sistema nuevo con Tekton)
- **`pipeline-build-container-pipeline.yaml`** - Definición de la Tekton Pipeline en OpenShift
- **`Dockerfile`** - Imagen del runner dedicado (Alpine + kubectl + tkn)
- **`gitlab-ci-original.yml`** - Template original (modelo previo con Kaniko, para comparativa)
- **`gitlab-ci-original-import.yml`** - Ejemplo de proyecto importando el template

## Descripción

Implementación de una arquitectura DevSecOps que delega la construcción de imágenes de GitLab a Tekton Pipelines en OpenShift, mejorando el aislamiento, la seguridad de credenciales y el control de la cadena de suministro software respecto al modelo previo basado en runners compartidos y Kaniko.

Todos los ficheros están anonimizados conforme a la política de confidencialidad corporativa (referencias genéricas como `corpname.com`, `default-project`, etc.).