**free

ctl-opt dftactgrp(*no);

dcl-pi P1267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'

dcl-ds theTable extname('T782') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T782 LIMIT 1;

theCharVar = 'Hello from P1267';
dsply theCharVar;
P700();
P185();
P1096();
return;