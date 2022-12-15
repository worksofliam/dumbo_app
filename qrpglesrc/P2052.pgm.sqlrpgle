**free

ctl-opt dftactgrp(*no);

dcl-pi P2052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1405.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds T1610 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1610 FROM T1610 LIMIT 1;

theCharVar = 'Hello from P2052';
dsply theCharVar;
callp localProc();
P1405();
P206();
P205();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2052 in the procedure';
end-proc;