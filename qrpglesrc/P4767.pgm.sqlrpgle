**free

ctl-opt dftactgrp(*no);

dcl-pi P4767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3917.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P2886.rpgleinc'

dcl-ds T1587 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1587 FROM T1587 LIMIT 1;

theCharVar = 'Hello from P4767';
dsply theCharVar;
callp localProc();
P3917();
P1469();
P2886();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4767 in the procedure';
end-proc;