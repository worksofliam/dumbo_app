**free

ctl-opt dftactgrp(*no);

dcl-pi P1575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1567.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds T732 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T732 FROM T732 LIMIT 1;

theCharVar = 'Hello from P1575';
dsply theCharVar;
callp localProc();
P1567();
P470();
P41();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1575 in the procedure';
end-proc;