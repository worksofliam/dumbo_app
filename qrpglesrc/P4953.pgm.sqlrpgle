**free

ctl-opt dftactgrp(*no);

dcl-pi P4953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1364.rpgleinc'
/copy 'qrpgleref/P3550.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds theTable extname('T1257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1257 LIMIT 1;

theCharVar = 'Hello from P4953';
dsply theCharVar;
P1364();
P3550();
P570();
return;