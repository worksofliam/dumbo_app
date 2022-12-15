**free

ctl-opt dftactgrp(*no);

dcl-pi P2326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'

dcl-ds theTable extname('T244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T244 LIMIT 1;

theCharVar = 'Hello from P2326';
dsply theCharVar;
P1472();
P1901();
return;