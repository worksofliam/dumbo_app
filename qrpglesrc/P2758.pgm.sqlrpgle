**free

ctl-opt dftactgrp(*no);

dcl-pi P2758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1997.rpgleinc'
/copy 'qrpgleref/P2435.rpgleinc'
/copy 'qrpgleref/P2623.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P2758';
dsply theCharVar;
P1997();
P2435();
P2623();
return;