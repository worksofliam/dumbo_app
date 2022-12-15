**free

ctl-opt dftactgrp(*no);

dcl-pi P607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds T46 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T46 FROM T46 LIMIT 1;

theCharVar = 'Hello from P607';
dsply theCharVar;
callp localProc();
P222();
P486();
P256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P607 in the procedure';
end-proc;