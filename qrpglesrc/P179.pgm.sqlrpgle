**free

ctl-opt dftactgrp(*no);

dcl-pi P179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds T138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T138 FROM T138 LIMIT 1;

theCharVar = 'Hello from P179';
dsply theCharVar;
callp localProc();
P120();
P45();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P179 in the procedure';
end-proc;