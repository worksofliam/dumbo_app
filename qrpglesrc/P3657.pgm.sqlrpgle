**free

ctl-opt dftactgrp(*no);

dcl-pi P3657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1823.rpgleinc'
/copy 'qrpgleref/P878.rpgleinc'
/copy 'qrpgleref/P2358.rpgleinc'

dcl-ds theTable extname('T1110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1110 LIMIT 1;

theCharVar = 'Hello from P3657';
dsply theCharVar;
callp localProc();
P1823();
P878();
P2358();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3657 in the procedure';
end-proc;