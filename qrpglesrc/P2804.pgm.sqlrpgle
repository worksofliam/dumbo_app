**free

ctl-opt dftactgrp(*no);

dcl-pi P2804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P2453.rpgleinc'
/copy 'qrpgleref/P1219.rpgleinc'

dcl-ds theTable extname('T724') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T724 LIMIT 1;

theCharVar = 'Hello from P2804';
dsply theCharVar;
P25();
P2453();
P1219();
return;