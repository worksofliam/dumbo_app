**free

ctl-opt dftactgrp(*no);

dcl-pi P4887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3407.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P2075.rpgleinc'

dcl-ds T1071 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1071 FROM T1071 LIMIT 1;

theCharVar = 'Hello from P4887';
dsply theCharVar;
callp localProc();
P3407();
P895();
P2075();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4887 in the procedure';
end-proc;