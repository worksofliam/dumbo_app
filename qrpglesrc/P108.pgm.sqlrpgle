**free

ctl-opt dftactgrp(*no);

dcl-pi P108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds theTable extname('T1291') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1291 LIMIT 1;

theCharVar = 'Hello from P108';
dsply theCharVar;
callp localProc();
P86();
P4();
P107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P108 in the procedure';
end-proc;