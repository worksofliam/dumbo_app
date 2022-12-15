**free

ctl-opt dftactgrp(*no);

dcl-pi P1707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'

dcl-ds T1491 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1491 FROM T1491 LIMIT 1;

theCharVar = 'Hello from P1707';
dsply theCharVar;
callp localProc();
P252();
P1312();
P934();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1707 in the procedure';
end-proc;