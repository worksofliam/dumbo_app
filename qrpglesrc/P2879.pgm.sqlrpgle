**free

ctl-opt dftactgrp(*no);

dcl-pi P2879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P1832.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P2879';
dsply theCharVar;
P1745();
P1434();
P1832();
return;