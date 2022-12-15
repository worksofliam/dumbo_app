**free

ctl-opt dftactgrp(*no);

dcl-pi P5599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1191.rpgleinc'
/copy 'qrpgleref/P3787.rpgleinc'
/copy 'qrpgleref/P4407.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P5599';
dsply theCharVar;
P1191();
P3787();
P4407();
return;