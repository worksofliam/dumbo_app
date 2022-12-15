**free

ctl-opt dftactgrp(*no);

dcl-pi P453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds T130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T130 FROM T130 LIMIT 1;

theCharVar = 'Hello from P453';
dsply theCharVar;
callp localProc();
P127();
P76();
P199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P453 in the procedure';
end-proc;