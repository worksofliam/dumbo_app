**free

ctl-opt dftactgrp(*no);

dcl-pi P448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds T5 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T5 FROM T5 LIMIT 1;

theCharVar = 'Hello from P448';
dsply theCharVar;
callp localProc();
P393();
P272();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P448 in the procedure';
end-proc;