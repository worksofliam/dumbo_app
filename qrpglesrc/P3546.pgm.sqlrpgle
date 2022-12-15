**free

ctl-opt dftactgrp(*no);

dcl-pi P3546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2718.rpgleinc'
/copy 'qrpgleref/P1348.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'

dcl-ds T252 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T252 FROM T252 LIMIT 1;

theCharVar = 'Hello from P3546';
dsply theCharVar;
callp localProc();
P2718();
P1348();
P284();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3546 in the procedure';
end-proc;