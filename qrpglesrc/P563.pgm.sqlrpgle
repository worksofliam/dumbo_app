**free

ctl-opt dftactgrp(*no);

dcl-pi P563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'

dcl-ds T334 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T334 FROM T334 LIMIT 1;

theCharVar = 'Hello from P563';
dsply theCharVar;
callp localProc();
P2();
P366();
P370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P563 in the procedure';
end-proc;