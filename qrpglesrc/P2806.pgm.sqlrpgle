**free

ctl-opt dftactgrp(*no);

dcl-pi P2806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'
/copy 'qrpgleref/P1568.rpgleinc'

dcl-ds T1478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1478 FROM T1478 LIMIT 1;

theCharVar = 'Hello from P2806';
dsply theCharVar;
callp localProc();
P856();
P2142();
P1568();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2806 in the procedure';
end-proc;