**free

ctl-opt dftactgrp(*no);

dcl-pi P2343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P1489.rpgleinc'

dcl-ds theTable extname('T1535') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1535 LIMIT 1;

theCharVar = 'Hello from P2343';
dsply theCharVar;
P693();
P94();
P1489();
return;