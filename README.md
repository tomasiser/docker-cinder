# docker-cinder
Docker image for building Cinder C++ applications

## Issues?
If you have troubles building Cinder projects using this Docker image, it may be because of the Boost library.
When building Cinder, it may be necessary to use system Boost.
You can do it when building Cinder using `cmake` by setting `CINDER_BOOST_USE_SYSTEM` to true, e.g., the following way:

```
cmake -DCINDER_BOOST_USE_SYSTEM=1
```