**free

ctl-opt dftactgrp(*no);

dcl-pi P1559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P1409.rpgleinc'

dcl-ds theTable extname('T1235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1235 LIMIT 1;

theCharVar = 'Hello from P1559';
dsply theCharVar;
P220();
P716();
P1409();
return;