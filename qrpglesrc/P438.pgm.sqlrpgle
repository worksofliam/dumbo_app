**free

ctl-opt dftactgrp(*no);

dcl-pi P438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'

dcl-ds T1789 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1789 FROM T1789 LIMIT 1;

theCharVar = 'Hello from P438';
dsply theCharVar;
callp localProc();
P168();
P376();
P345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P438 in the procedure';
end-proc;