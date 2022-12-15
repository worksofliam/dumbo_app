**free

ctl-opt dftactgrp(*no);

dcl-pi P2300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2093.rpgleinc'
/copy 'qrpgleref/P1540.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'

dcl-ds T311 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T311 FROM T311 LIMIT 1;

theCharVar = 'Hello from P2300';
dsply theCharVar;
callp localProc();
P2093();
P1540();
P1710();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2300 in the procedure';
end-proc;