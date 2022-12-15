**free

ctl-opt dftactgrp(*no);

dcl-pi P4962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3571.rpgleinc'
/copy 'qrpgleref/P1616.rpgleinc'
/copy 'qrpgleref/P4440.rpgleinc'

dcl-ds theTable extname('T1093') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1093 LIMIT 1;

theCharVar = 'Hello from P4962';
dsply theCharVar;
P3571();
P1616();
P4440();
return;