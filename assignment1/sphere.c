#include "sphere.h"

Sphere::Sphere(Vec3f &point, float &r, Material *&m)
{
    center = point;
    radius = r;
    material = m;
    // std::cout << center << std::endl;
}

Sphere::~Sphere()
{
}

bool Sphere::intersect(const Ray &r, Hit &h, float tmin)
{
    Vec3f dir = r.getDirection();
    Vec3f c2c = center - r.getOrigin();

    float tp = c2c.Dot3(dir);
    float d2 = c2c.Dot3(c2c) - tp * tp;
    if(d2 > radius * radius)
    {
        return false;
    }
    
    float t = sqrt(radius * radius -d2);

    bool value = false;
    if(tp - t >= tmin)
    { 
        if(tp - t < h.getT())
        {
            h.set(tp - t, material, r);
        }
        value = true;
    }
    return value;
}
