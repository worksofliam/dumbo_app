**free

ctl-opt dftactgrp(*no);

dcl-pi P5127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4179.rpgleinc'
/copy 'qrpgleref/P4903.rpgleinc'
/copy 'qrpgleref/P3615.rpgleinc'

dcl-ds theTable extname('T1530') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1530 LIMIT 1;

theCharVar = 'Hello from P5127';
dsply theCharVar;
P4179();
P4903();
P3615();
return;