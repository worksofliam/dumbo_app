**free

ctl-opt dftactgrp(*no);

dcl-pi P4484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P2633.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'

dcl-ds T1802 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1802 FROM T1802 LIMIT 1;

theCharVar = 'Hello from P4484';
dsply theCharVar;
callp localProc();
P927();
P2633();
P778();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4484 in the procedure';
end-proc;