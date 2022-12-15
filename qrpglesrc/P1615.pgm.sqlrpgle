**free

ctl-opt dftactgrp(*no);

dcl-pi P1615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1495.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'

dcl-ds T406 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T406 FROM T406 LIMIT 1;

theCharVar = 'Hello from P1615';
dsply theCharVar;
callp localProc();
P1495();
P1032();
P1365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1615 in the procedure';
end-proc;