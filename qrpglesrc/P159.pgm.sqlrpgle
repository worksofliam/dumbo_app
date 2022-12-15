**free

ctl-opt dftactgrp(*no);

dcl-pi P159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds T1202 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1202 FROM T1202 LIMIT 1;

theCharVar = 'Hello from P159';
dsply theCharVar;
callp localProc();
P76();
P58();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P159 in the procedure';
end-proc;