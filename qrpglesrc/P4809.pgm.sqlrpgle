**free

ctl-opt dftactgrp(*no);

dcl-pi P4809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3010.rpgleinc'
/copy 'qrpgleref/P3155.rpgleinc'
/copy 'qrpgleref/P2499.rpgleinc'

dcl-ds T1568 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1568 FROM T1568 LIMIT 1;

theCharVar = 'Hello from P4809';
dsply theCharVar;
callp localProc();
P3010();
P3155();
P2499();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4809 in the procedure';
end-proc;