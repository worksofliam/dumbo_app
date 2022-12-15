**free

ctl-opt dftactgrp(*no);

dcl-pi P1374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'

dcl-ds T372 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T372 FROM T372 LIMIT 1;

theCharVar = 'Hello from P1374';
dsply theCharVar;
callp localProc();
P971();
P256();
P1251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1374 in the procedure';
end-proc;