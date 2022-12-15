**free

ctl-opt dftactgrp(*no);

dcl-pi P3581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1511.rpgleinc'
/copy 'qrpgleref/P1796.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds T880 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T880 FROM T880 LIMIT 1;

theCharVar = 'Hello from P3581';
dsply theCharVar;
callp localProc();
P1511();
P1796();
P500();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3581 in the procedure';
end-proc;