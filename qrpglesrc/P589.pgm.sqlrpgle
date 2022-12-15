**free

ctl-opt dftactgrp(*no);

dcl-pi P589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P589';
dsply theCharVar;
P317();
P7();
P352();
return;