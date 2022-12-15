**free

ctl-opt dftactgrp(*no);

dcl-pi P1046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'

dcl-ds theTable extname('T13') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T13 LIMIT 1;

theCharVar = 'Hello from P1046';
dsply theCharVar;
P502();
P404();
P441();
return;