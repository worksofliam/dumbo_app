**free

ctl-opt dftactgrp(*no);

dcl-pi P1501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1233.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds theTable extname('T1053') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1053 LIMIT 1;

theCharVar = 'Hello from P1501';
dsply theCharVar;
P1233();
P381();
P809();
return;