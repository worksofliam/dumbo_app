**free

ctl-opt dftactgrp(*no);

dcl-pi P368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P368';
dsply theCharVar;
P189();
P179();
P62();
return;