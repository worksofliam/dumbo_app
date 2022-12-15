**free

ctl-opt dftactgrp(*no);

dcl-pi P4757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4111.rpgleinc'
/copy 'qrpgleref/P4015.rpgleinc'
/copy 'qrpgleref/P3272.rpgleinc'

dcl-ds theTable extname('T1550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1550 LIMIT 1;

theCharVar = 'Hello from P4757';
dsply theCharVar;
callp localProc();
P4111();
P4015();
P3272();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4757 in the procedure';
end-proc;