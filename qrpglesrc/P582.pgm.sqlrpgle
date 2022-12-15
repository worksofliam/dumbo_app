**free

ctl-opt dftactgrp(*no);

dcl-pi P582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds T1678 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1678 FROM T1678 LIMIT 1;

theCharVar = 'Hello from P582';
dsply theCharVar;
callp localProc();
P80();
P155();
P113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P582 in the procedure';
end-proc;