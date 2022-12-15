**free

ctl-opt dftactgrp(*no);

dcl-pi P2857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P1416.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'

dcl-ds T1239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1239 FROM T1239 LIMIT 1;

theCharVar = 'Hello from P2857';
dsply theCharVar;
callp localProc();
P320();
P1416();
P1111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2857 in the procedure';
end-proc;