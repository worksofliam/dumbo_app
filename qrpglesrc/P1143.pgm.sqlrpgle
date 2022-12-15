**free

ctl-opt dftactgrp(*no);

dcl-pi P1143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'

dcl-ds theTable extname('T543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T543 LIMIT 1;

theCharVar = 'Hello from P1143';
dsply theCharVar;
P398();
P808();
P388();
return;