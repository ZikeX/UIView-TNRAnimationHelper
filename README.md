# UIView-TNRAnimationHelper
A category on `UIView`

##UIView Animation Helper 
This is a **useful category on `UIView`** that contains practical animations: Rotation, Flip, Horizontal and Vertical Shake, Pulse.

Designed simply and elegant these components are easy to integrate during development process. 

 - **Rotation**

![Rotation](images/rotation.gif)

 - **Flip**

![Flip](images/flip.gif)

 - **Horizontal and Vertical Shake**

![Shake](images/shake.gif)

 - **Pulse**

![Pulse](images/pulse.gif)


Usage
-----

####Import `UIView+AnimationHelper.h` file

    #import "UIView+AnimationHelper.h"

####Init UIView

    UIView *v = [UIView new];
    v.backgroundColor = [UIColor redColor];
    v.frame = CGRectMake (100, 100, 150, 150);
    [self.view addSubview:v];
		
####Init animation
		
    [v flipWithDuration:2.0
              direction:UIViewAnimationFlipDirectionFromLeft
            repeatCount:1
            autoreverse:NO];

						
						
## License

	The MIT License (MIT)

	Copyright © 2016 Thunderrise

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
