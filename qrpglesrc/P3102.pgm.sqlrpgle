**free

ctl-opt dftactgrp(*no);

dcl-pi P3102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2666.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P2469.rpgleinc'

dcl-ds theTable extname('T330') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T330 LIMIT 1;

theCharVar = 'Hello from P3102';
dsply theCharVar;
P2666();
P154();
P2469();
return;