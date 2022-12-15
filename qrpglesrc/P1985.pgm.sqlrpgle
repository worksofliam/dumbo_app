**free

ctl-opt dftactgrp(*no);

dcl-pi P1985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P1420.rpgleinc'
/copy 'qrpgleref/P1031.rpgleinc'

dcl-ds theTable extname('T1348') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1348 LIMIT 1;

theCharVar = 'Hello from P1985';
dsply theCharVar;
callp localProc();
P134();
P1420();
P1031();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1985 in the procedure';
end-proc;