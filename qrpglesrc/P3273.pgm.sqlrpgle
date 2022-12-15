**free

ctl-opt dftactgrp(*no);

dcl-pi P3273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P2308.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'

dcl-ds T799 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T799 FROM T799 LIMIT 1;

theCharVar = 'Hello from P3273';
dsply theCharVar;
callp localProc();
P165();
P2308();
P629();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3273 in the procedure';
end-proc;