**free

ctl-opt dftactgrp(*no);

dcl-pi P5561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2899.rpgleinc'
/copy 'qrpgleref/P1846.rpgleinc'

dcl-ds T1346 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1346 FROM T1346 LIMIT 1;

theCharVar = 'Hello from P5561';
dsply theCharVar;
callp localProc();
P561();
P2899();
P1846();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5561 in the procedure';
end-proc;