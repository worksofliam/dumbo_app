**free

ctl-opt dftactgrp(*no);

dcl-pi P259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T241 LIMIT 1;

theCharVar = 'Hello from P259';
dsply theCharVar;
P176();
P56();
P24();
return;