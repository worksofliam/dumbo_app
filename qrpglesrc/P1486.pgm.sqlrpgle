**free

ctl-opt dftactgrp(*no);

dcl-pi P1486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P1048.rpgleinc'

dcl-ds theTable extname('T1121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1121 LIMIT 1;

theCharVar = 'Hello from P1486';
dsply theCharVar;
P447();
P880();
P1048();
return;