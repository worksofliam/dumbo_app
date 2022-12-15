**free

ctl-opt dftactgrp(*no);

dcl-pi P3526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P961.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'

dcl-ds T785 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T785 FROM T785 LIMIT 1;

theCharVar = 'Hello from P3526';
dsply theCharVar;
callp localProc();
P1691();
P961();
P2418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3526 in the procedure';
end-proc;