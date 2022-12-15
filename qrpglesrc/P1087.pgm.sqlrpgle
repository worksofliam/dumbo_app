**free

ctl-opt dftactgrp(*no);

dcl-pi P1087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P1087';
dsply theCharVar;
P1003();
P972();
P56();
return;