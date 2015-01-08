```html
General format:

selector {
    property: value;
}

    * selector: any HTML element (<p>, <img>, <table>-- just take off <>'s)
    * property: aspect of selector (font-family, color, font-size)
    * value: possible setting for a property (color: ##8B1C62)
    * separate with ";"

___

hexadecimal values

    * 6 values to understand millions of colors
    * counting: base-16 (#0-9 & letters:a-f)
    * case-insensitive
___

pixels and ems

    * "px" : pixels - specifying font sizes in pixels is great when you want the user to see exactly on their screen what you designed on yours.
    *   ** assumes your screens are of similar size**
    * "em" : relative measure - use if user is using a screen of a very different size than yours (ie. smartphone)
    *   1 em = default font size on whatever screen the user is using. 

___

Font styles:

    default fonts: 
        * serif (with decorative tips)
        * sans-serif
        * cursive (scripty font)
    backup values: (CSS will try to apply Tahoma to paragraphs; if not, Verdana; or else, sans-serif)
        * font-family: Tahoma, Verdana, sans-serif;

___

Styles:

    * text-decoration: none -- (gets rid of underline ie. in hyperlinks)
    * (div) border-radius: 5px -- (rounds the edges of container for ie. buttons)
    * margin: auto -- (sets equal margins on each side of HTML element)
    * text-align: center -- (centers text elements)
    * " * { border:2px solid black  }" -- UNIVERSAL SELECTOR  **selects every element and adds a 2px black border**

___
Specificity: 

Classes and ID's
    (Classes & IDs more specific than nested selectors)
    * Classes: useful when bunch of elements receive the same styling.
        HTML
        - <div class="square"></div>
        - <img class="square"/>
        - <td class="square"></td>
        
        CSS
        - .square {
            height: 100px;
            width: 100px;
            } 
    * ID: great when exactly *one* element should receive a certain kind of styling
        HTML
        - <div id="first"></div>
        - <div id="second"></div>
        - <p id="intro"></p>

        CSS
        - #first {
            height: 50px;
            }
        - #second {
            height: 100px;
            }
        - #intro {
            color :#FF0000;
            }
Pseudo-class selectors
    * way of accessing HTML items that aren't part of the document tree and style changes in our HTML document (ie. control the appearance of unvisited and visited links-- even links the user is hovering over but hasn't clicked)
        CSS Syntax (just extra colon)
        selector:pseudo-class_selector {
            property: value;
        }
    - a:link  -- an unvisted link
    - a:visted -- a visited link
    - a:hover -- a link you're hovering over

    - p:first-child -- selects FIRST CHILD of element
    - p:nth-child(#) -- select ANY(2nd, 3rd, etc.) child, put child's #
    - 
            
Nested Selectors 
    
    * div div p {/*CSS stuff*/} --specifies <p> that's nested in 2 div's , not all <p>'s
    * div > p {/*CSS stuff*/} -- to grab DIRECTLY NESTED element. no other elements in between.
    * " * { border:2px solid black  }" -- UNIVERSAL SELECTOR  **selects every element and adds a 2px black border**

___

Positioning

(Default: FULL WIDTH)

Properties 
* Display: 
    Possible elements
    - block  -- block format; takes full width (no side by side)
    - inline-block  -- block format; allows other els to next to it on the same line
    - inline  -- no block formatting; sits in same line; takes as much width as it needs, not whole line
    - none  -- no el/content

* Margin: space around element
    - margin-top, margin-right, margin-bottom, margin-left: (specify individually)   OR
    - margin: value value value value; (sets MT, MR, MB, ML)
        - auto  -- auto EQUAL left and right margins, centering it on page
        - POSITIVE value  -- moves value distance FROM margin (ML 20px: moves 20px to the right)
        - NEGATIVE value -- moves value distance TO margin
    
* Border: edge of the element
    - border-radius
* Padding: spacing between border and (innermost) content
    - padding-top, padding-right, padding-bottom, padding-left   OR
    - padding: value value value value; (sets PT, PR, PB, PL)   OR
    - padding: value (sets value-padding distance on ALL sides)
    - POSITIVE value  -- moves value distance FROM padding (PL 20px: moves 20px to the right)
    - NEGATIVE value -- moves value distance TO margin
    
* Content: actual "stuff (ie.<p>)"

* Floats: set positions relative to other elements/ can be used to naturally divide page into multiple sections
    - right, left, top, bottom

* Clear: moves below any floating elements on the (left, right, both) sides of the page
    - left -- moves below floating els on left side of page
    - right 
    - both -- el gets out of way of floating els on left AND right

___

Complex Positioning (Position)

* Position:
    - static  -- default position
    - absolute  -- relative to first parent element NOT POSITION: STATIC, otherwise relative to <html>
    - relative  -- relative to its default static positioning
    - fixed  -- ANCHORS to browser window (as if gluing onto screen), remains fixed even as other elements scroll past

* z-index: #
    (the higher an el's z-index, the higher it'll be "stacked" on the page)
    - z-index:1  -- ensures header will sit "on top of" other elements and won't get stuck behind them
    - 

___

Positioning: Static vs. Relative

* Static Positioning: (Really a misnomer)
    Boxes with "position:static" aren't really "positioned" at all in the CSS sense. They're simply laid out in the order they occur in the markup and take up as much room as they need == this the default behavior you get when you don't apply any CSS at all to your HTML.
    
    *Block vs inline-block
    
    - Block box layout
        + Unless CSS declarations specified, block boxes are laid out vertically from top to bottom in the order they occur in the markup. Each box is normally as wide as the document/body. But even if we make them narrower to make room, they will not lay side by side.
        + Think of it as if each block box had an implicit line break before and after it, to make sure it ends up on a "line" of its own.
        + The vertical distance between two block boxes is controlled by the "margin-bottom" property of the first box and "margin-top" property of the second box. For boxes in the normal flow (ie boxes that aren't floated or absolutely positioned) the vertical margins between two adjacent block boxes will collapse/overlap so that the net result is *not* the sum of the two margins, but the greater of the two.
        + You can specify the dimensions of a block box using the width and height properties. You can also set both vertical and horizontal margins on them. The initial (default) value for width and height is "auto". These factors in combinatoin mean that a block box will by default be as wide as its parent.
   - Inline box layout
       + The inline boxes are laid out horizontally, one after the other, in the order they occur in the markup. 
       + Depending on the "direction" property, the inline boxes will either be laid out from left to right ("direction:ltr") or from right to left ("direction:rtl").
       + Line boxes are laid out vertically within their block-level parent, with no space between them. We can affect the height of line boxes through the "line-height" property.
       + For inline boxes, we *cannot specify dimensions*. We can specify horizontal margins, but not vertical ones. If necessary, an inline box will be split into several inline boxes, distributed over two or more line boxes. When such a split occurs, any horizontal margins and padding, and any vertical borders, will only apply *before* the *first* box and *after* the *last* box.
       + The vertical alignment of inline boxes in the line box is determined by the "vertical-align" property. The default value is "baseline".
       + When the total width of inline boxes within a line box is less than the width of the line box itself, the horizontal alignment is controlled by the "text-align" property. (text-align:justify/left/center/right)

* Relative Positioning
    - Relative positioning is more closely related to static "positioning" than with its cousins -- absolute and fixed positioning.
    - An element with "position:relative" is first laid out just like any static element; block-level or inline. But then something interesting happens: the **generated box** is shifted according to the "top", "bottom", "left" and "right" properties.
    - The thing to remember about relative positioning is that it's only the generated box that is shifted. The element still remains where it was in the static document flow. That's where it "takes up space" as far as other elements are concerned.
        - This means that the shifted box may end up overlapping other elements' boxes, because they still act like the relatively positioned element has remained where it should be (it's static position).
        - So: According to the document flow, the element has *not* moved-- it is just the *end visual result* that shows the box being moved.
   - No need to specify both the "top" property and the "bottom" property (or "left" and "right") for the same element.
   - For horizontal movement, it depends on the "direction" property. In left-to-right environment, "right" is ignored. In right-to-left environment, "left" is ignored.
   - Use floats/clear.
    
Summary: static vs relative
    Static positioning is the default state of affairs. Block boxes are laid vertically in source order, while inline boxes are laid out horizontally in line boxes within those block boxes.
    Relative positioning allows you to shift the generated box in one or two dimensions. The element still occupies space as if it were static, but the generated box can be shifted to another position.
    Relative positioning is mainly useful in combination with floats to create layouts where the presentational order differs from the source order. 

____

Positioning: Absolute vs. Fixed

* Absolute Positioning
    - These elements are removed entirely from the document flow. That means they have no effect at all on their parent element or on the elements that occur after them in the source code. 
    - This just means that the other elements will behave as if the absolutely positioned element doesn't exist.
    - Therefore, an absolutely positioned element will therefore overlap other content unless you take action to prevent it. Sometimes, of course, this overlap is what you desire, but you should be aware of it.
    - If all child elements of a container are absolutely positioned, the parent's height will collapse to zero.
    - Absolutely positioned elements are positioned with respect to a containing block, which is the nearest positioned ancestor. 
    - If there is no positioned ancestor, the viewport will be the containing block.
    - The positions of each edge an absolutely positioned element can be specified with the "top", "right", "bottom", and "left" properties. The value of each specifies the distance of that edge to the corresponding edge of the element's containing block.

* Fixed Positioning
    - Is a very specialized form of absolute positioning. 
    - These elements are fixed relative to the viewport/browser window rather than the containing element. Even if the page is scrolled, they stay exactly in the same position inside the browser window.

* Z-index:
    - All positioned elements are rendered at a certain stack level within a stacking content. You can change the stack level of a positioned element using the z-index property. When z- index is specified as an integer value, the element establishes a local stacking context for its descendants.

____

Centering stuff:
(Horizontally)

- Statically positioned element:
    * display: block; (treat everything like a block)
    * margin: auto / 0 auto;

- Absolutely positioned element(contained inside relatively positioned item)
  - & Parent with static width:
     * left = (parent width - element width)/2
        
  - & Parent with fluid width:
    * another way so that child isn't dependent on parent's width
    * left = ## %  
        ** (NOT 50%, because you're not accounting for the width of the element that you're centering)
        ** (to make it work, ADD NEGATIVE LEFT margin of HALF width of child element)
        x = child width
        y = x/2
    * left: 50%;
    * margin: 0 0 0 -y;
    
- Dead center: (vertically and horiontally centered)
    ** BOTH parent and child are ABSOLUTELY positioned
    * use negative margin trick for both
        parent = y
        child = x
    
    parent {
        height:1000px;
        width; 1000px;
        position: absolute;
        
        margin: -500px 0 0 -500px;
        left: 50%;
        top: 50%;
    }
    
    child{
        height: 500px;
        width: 500px;
        position: absolute;
        
        margin: -250px 0 0 -250px;
        left: 50%;
        top:50%;
    }

- Centering text (element inside div):

    (horizontally)
    * text-align: center 
    
    (vertically)/ (ONLY FOR SINGLE LINE OF TEXT)
    * line-height: same as height of div

- Centering background image:
    * background: #color url(address) no-repeat;
    * background-position: ____
        - default: left top, if no repeat is set
        - other options: center top, right top, left center, center center (center), right center, left bottom, center bottom, right bottom
    
    shorthand syntax:
    * background: #color url(address) no-repeat center;

____

Overflow: visible | hidden | scroll | auto | initial | inherit

    * visible: overflow is not clipped. (text is seen continuing past container)
    * hidden: overflow is clipped, the rest of content will be invisible. 
        - overflowing text is clipped and invisible. CANNOT access the rest of content
   * scroll: overflow is clipped but scroll bar is added to see the rest of the content
   * auto: if overflow is clipped, a scroll bar should be added to see the rest of the content
   * initial: sets this property to default (visible)
   * inherit: inherits this property from its parent element

   
