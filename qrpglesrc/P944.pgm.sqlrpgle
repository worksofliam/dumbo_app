**free

ctl-opt dftactgrp(*no);

dcl-pi P944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P707.rpgleinc'
/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P944';
dsply theCharVar;
callp localProc();
P707();
P446();
P175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P944 in the procedure';
end-proc;