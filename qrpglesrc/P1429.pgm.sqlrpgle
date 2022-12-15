**free

ctl-opt dftactgrp(*no);

dcl-pi P1429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds T784 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T784 FROM T784 LIMIT 1;

theCharVar = 'Hello from P1429';
dsply theCharVar;
callp localProc();
P1202();
P840();
P305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1429 in the procedure';
end-proc;