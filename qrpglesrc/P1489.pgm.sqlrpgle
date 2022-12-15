**free

ctl-opt dftactgrp(*no);

dcl-pi P1489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T157 LIMIT 1;

theCharVar = 'Hello from P1489';
dsply theCharVar;
P1264();
P479();
P553();
return;