**free

ctl-opt dftactgrp(*no);

dcl-pi P1104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P702.rpgleinc'

dcl-ds T214 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T214 FROM T214 LIMIT 1;

theCharVar = 'Hello from P1104';
dsply theCharVar;
callp localProc();
P618();
P403();
P702();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1104 in the procedure';
end-proc;