**free

ctl-opt dftactgrp(*no);

dcl-pi P4122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3149.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P3440.rpgleinc'

dcl-ds T1574 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1574 FROM T1574 LIMIT 1;

theCharVar = 'Hello from P4122';
dsply theCharVar;
callp localProc();
P3149();
P107();
P3440();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4122 in the procedure';
end-proc;