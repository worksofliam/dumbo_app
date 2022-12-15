**free

ctl-opt dftactgrp(*no);

dcl-pi P4688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4230.rpgleinc'
/copy 'qrpgleref/P4311.rpgleinc'
/copy 'qrpgleref/P1904.rpgleinc'

dcl-ds T1321 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1321 FROM T1321 LIMIT 1;

theCharVar = 'Hello from P4688';
dsply theCharVar;
callp localProc();
P4230();
P4311();
P1904();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4688 in the procedure';
end-proc;