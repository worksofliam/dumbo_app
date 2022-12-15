**free

ctl-opt dftactgrp(*no);

dcl-pi P1778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds T768 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T768 FROM T768 LIMIT 1;

theCharVar = 'Hello from P1778';
dsply theCharVar;
callp localProc();
P79();
P885();
P856();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1778 in the procedure';
end-proc;