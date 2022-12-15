**free

ctl-opt dftactgrp(*no);

dcl-pi P1509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P1308.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P1509';
dsply theCharVar;
P170();
P573();
P1308();
return;