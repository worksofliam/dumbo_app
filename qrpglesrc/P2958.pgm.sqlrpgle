**free

ctl-opt dftactgrp(*no);

dcl-pi P2958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1618.rpgleinc'
/copy 'qrpgleref/P1313.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'

dcl-ds theTable extname('T207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T207 LIMIT 1;

theCharVar = 'Hello from P2958';
dsply theCharVar;
P1618();
P1313();
P1341();
return;