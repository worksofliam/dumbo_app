**free

ctl-opt dftactgrp(*no);

dcl-pi P1326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'

dcl-ds theTable extname('T434') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T434 LIMIT 1;

theCharVar = 'Hello from P1326';
dsply theCharVar;
P870();
P764();
P170();
return;