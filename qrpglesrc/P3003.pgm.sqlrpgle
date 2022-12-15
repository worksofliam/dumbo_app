**free

ctl-opt dftactgrp(*no);

dcl-pi P3003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2098.rpgleinc'
/copy 'qrpgleref/P1655.rpgleinc'
/copy 'qrpgleref/P1633.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P3003';
dsply theCharVar;
callp localProc();
P2098();
P1655();
P1633();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3003 in the procedure';
end-proc;