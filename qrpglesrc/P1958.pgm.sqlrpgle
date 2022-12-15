**free

ctl-opt dftactgrp(*no);

dcl-pi P1958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P1792.rpgleinc'

dcl-ds T56 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T56 FROM T56 LIMIT 1;

theCharVar = 'Hello from P1958';
dsply theCharVar;
callp localProc();
P160();
P293();
P1792();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1958 in the procedure';
end-proc;