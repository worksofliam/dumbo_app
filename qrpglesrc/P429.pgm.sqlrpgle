**free

ctl-opt dftactgrp(*no);

dcl-pi P429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'

dcl-ds T237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T237 FROM T237 LIMIT 1;

theCharVar = 'Hello from P429';
dsply theCharVar;
callp localProc();
P152();
P316();
P389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P429 in the procedure';
end-proc;