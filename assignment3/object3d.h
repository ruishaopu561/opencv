#ifndef _OBJECT3D_H_
#define _OBJECT3D_H_

#include <GL/gl.h>
#include "ray.h"
#include "hit.h"
#include "material.h"

class Object3D
{
public:
    Material *material;

    Object3D() {};
    Object3D(Material *_material):material(_material) {};
    ~Object3D() {};
    virtual bool intersect(const Ray &r, Hit &h, float tmin) = 0;
    virtual void paint(void) = 0;
private:
};

#endif // !_OBJECT3D_H_