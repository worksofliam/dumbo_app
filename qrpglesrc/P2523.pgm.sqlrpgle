**free

ctl-opt dftactgrp(*no);

dcl-pi P2523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P1927.rpgleinc'
/copy 'qrpgleref/P1822.rpgleinc'

dcl-ds T485 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T485 FROM T485 LIMIT 1;

theCharVar = 'Hello from P2523';
dsply theCharVar;
callp localProc();
P1251();
P1927();
P1822();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2523 in the procedure';
end-proc;