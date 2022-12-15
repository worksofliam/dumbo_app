**free

ctl-opt dftactgrp(*no);

dcl-pi P4709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3455.rpgleinc'
/copy 'qrpgleref/P4311.rpgleinc'
/copy 'qrpgleref/P1784.rpgleinc'

dcl-ds theTable extname('T1230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1230 LIMIT 1;

theCharVar = 'Hello from P4709';
dsply theCharVar;
P3455();
P4311();
P1784();
return;