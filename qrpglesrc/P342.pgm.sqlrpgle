**free

ctl-opt dftactgrp(*no);

dcl-pi P342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'

dcl-ds theTable extname('T814') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T814 LIMIT 1;

theCharVar = 'Hello from P342';
dsply theCharVar;
P337();
P83();
P163();
return;