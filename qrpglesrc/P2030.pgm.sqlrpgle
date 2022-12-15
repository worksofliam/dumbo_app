**free

ctl-opt dftactgrp(*no);

dcl-pi P2030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1631.rpgleinc'
/copy 'qrpgleref/P1907.rpgleinc'
/copy 'qrpgleref/P1283.rpgleinc'

dcl-ds theTable extname('T956') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T956 LIMIT 1;

theCharVar = 'Hello from P2030';
dsply theCharVar;
P1631();
P1907();
P1283();
return;