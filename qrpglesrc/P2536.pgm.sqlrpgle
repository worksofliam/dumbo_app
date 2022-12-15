**free

ctl-opt dftactgrp(*no);

dcl-pi P2536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1768.rpgleinc'
/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'

dcl-ds T653 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T653 FROM T653 LIMIT 1;

theCharVar = 'Hello from P2536';
dsply theCharVar;
callp localProc();
P1768();
P2125();
P1220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2536 in the procedure';
end-proc;