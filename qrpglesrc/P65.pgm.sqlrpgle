**free

ctl-opt dftactgrp(*no);

dcl-pi P65;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P65';
dsply theCharVar;
P52();
P31();
P56();
return;