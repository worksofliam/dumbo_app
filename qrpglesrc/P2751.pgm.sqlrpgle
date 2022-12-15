**free

ctl-opt dftactgrp(*no);

dcl-pi P2751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P2751';
dsply theCharVar;
P486();
P1870();
P11();
return;