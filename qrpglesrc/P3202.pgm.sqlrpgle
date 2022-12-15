**free

ctl-opt dftactgrp(*no);

dcl-pi P3202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2037.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P2549.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P3202';
dsply theCharVar;
P2037();
P1249();
P2549();
return;