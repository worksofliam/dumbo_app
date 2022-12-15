**free

ctl-opt dftactgrp(*no);

dcl-pi P3069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1588.rpgleinc'
/copy 'qrpgleref/P2777.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds T1083 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1083 FROM T1083 LIMIT 1;

theCharVar = 'Hello from P3069';
dsply theCharVar;
callp localProc();
P1588();
P2777();
P571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3069 in the procedure';
end-proc;