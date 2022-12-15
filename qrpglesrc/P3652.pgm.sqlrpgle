**free

ctl-opt dftactgrp(*no);

dcl-pi P3652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1945.rpgleinc'
/copy 'qrpgleref/P1579.rpgleinc'
/copy 'qrpgleref/P2242.rpgleinc'

dcl-ds T1598 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1598 FROM T1598 LIMIT 1;

theCharVar = 'Hello from P3652';
dsply theCharVar;
callp localProc();
P1945();
P1579();
P2242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3652 in the procedure';
end-proc;