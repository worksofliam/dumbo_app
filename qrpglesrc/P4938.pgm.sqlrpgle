**free

ctl-opt dftactgrp(*no);

dcl-pi P4938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4586.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P4938';
dsply theCharVar;
callp localProc();
P4586();
P1458();
P882();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4938 in the procedure';
end-proc;