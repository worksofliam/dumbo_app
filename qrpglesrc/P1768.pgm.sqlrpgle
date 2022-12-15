**free

ctl-opt dftactgrp(*no);

dcl-pi P1768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1314.rpgleinc'
/copy 'qrpgleref/P1670.rpgleinc'
/copy 'qrpgleref/P1496.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P1768';
dsply theCharVar;
P1314();
P1670();
P1496();
return;