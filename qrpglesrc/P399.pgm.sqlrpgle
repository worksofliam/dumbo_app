**free

ctl-opt dftactgrp(*no);

dcl-pi P399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T1187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1187 LIMIT 1;

theCharVar = 'Hello from P399';
dsply theCharVar;
callp localProc();
P381();
P39();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P399 in the procedure';
end-proc;