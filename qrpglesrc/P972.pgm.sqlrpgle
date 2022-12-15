**free

ctl-opt dftactgrp(*no);

dcl-pi P972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P706.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds theTable extname('T722') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T722 LIMIT 1;

theCharVar = 'Hello from P972';
dsply theCharVar;
P706();
P170();
P817();
return;