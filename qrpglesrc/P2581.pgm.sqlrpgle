**free

ctl-opt dftactgrp(*no);

dcl-pi P2581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1480.rpgleinc'
/copy 'qrpgleref/P1979.rpgleinc'
/copy 'qrpgleref/P1451.rpgleinc'

dcl-ds T352 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T352 FROM T352 LIMIT 1;

theCharVar = 'Hello from P2581';
dsply theCharVar;
callp localProc();
P1480();
P1979();
P1451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2581 in the procedure';
end-proc;