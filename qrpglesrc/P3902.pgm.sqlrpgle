**free

ctl-opt dftactgrp(*no);

dcl-pi P3902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3309.rpgleinc'
/copy 'qrpgleref/P2519.rpgleinc'
/copy 'qrpgleref/P1225.rpgleinc'

dcl-ds theTable extname('T1812') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1812 LIMIT 1;

theCharVar = 'Hello from P3902';
dsply theCharVar;
P3309();
P2519();
P1225();
return;