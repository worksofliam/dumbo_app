**free

ctl-opt dftactgrp(*no);

dcl-pi P767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P767';
dsply theCharVar;
callp localProc();
P420();
P561();
P723();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P767 in the procedure';
end-proc;