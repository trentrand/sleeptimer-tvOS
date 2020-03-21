//%hook SomeClass
//-(id)init {
//  return %orig;
//}
//%end
//
//%ctor {
//  %init(SomeClass=objc_getClass("class with spaces in the name"));
//}
