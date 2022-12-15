**free

ctl-opt dftactgrp(*no);

dcl-pi P3918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2684.rpgleinc'
/copy 'qrpgleref/P2519.rpgleinc'
/copy 'qrpgleref/P3642.rpgleinc'

dcl-ds T978 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T978 FROM T978 LIMIT 1;

theCharVar = 'Hello from P3918';
dsply theCharVar;
callp localProc();
P2684();
P2519();
P3642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3918 in the procedure';
end-proc;