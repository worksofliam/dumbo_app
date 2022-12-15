**free

ctl-opt dftactgrp(*no);

dcl-pi P108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds T349 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T349 FROM T349 LIMIT 1;

theCharVar = 'Hello from P108';
dsply theCharVar;
callp localProc();
P101();
P76();
P83();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P108 in the procedure';
end-proc;