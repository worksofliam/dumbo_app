**free

ctl-opt dftactgrp(*no);

dcl-pi P2629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'

dcl-ds T686 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T686 FROM T686 LIMIT 1;

theCharVar = 'Hello from P2629';
dsply theCharVar;
callp localProc();
P450();
P1156();
P759();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2629 in the procedure';
end-proc;