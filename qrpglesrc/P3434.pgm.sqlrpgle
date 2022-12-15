**free

ctl-opt dftactgrp(*no);

dcl-pi P3434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P3219.rpgleinc'
/copy 'qrpgleref/P1428.rpgleinc'

dcl-ds T311 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T311 FROM T311 LIMIT 1;

theCharVar = 'Hello from P3434';
dsply theCharVar;
callp localProc();
P1006();
P3219();
P1428();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3434 in the procedure';
end-proc;