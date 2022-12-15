**free

ctl-opt dftactgrp(*no);

dcl-pi P1725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'

dcl-ds theTable extname('T1519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1519 LIMIT 1;

theCharVar = 'Hello from P1725';
dsply theCharVar;
P441();
P876();
P1173();
return;