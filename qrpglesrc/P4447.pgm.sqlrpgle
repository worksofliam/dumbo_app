**free

ctl-opt dftactgrp(*no);

dcl-pi P4447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3219.rpgleinc'
/copy 'qrpgleref/P1573.rpgleinc'
/copy 'qrpgleref/P792.rpgleinc'

dcl-ds T728 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T728 FROM T728 LIMIT 1;

theCharVar = 'Hello from P4447';
dsply theCharVar;
callp localProc();
P3219();
P1573();
P792();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4447 in the procedure';
end-proc;