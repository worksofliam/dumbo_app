**free

ctl-opt dftactgrp(*no);

dcl-pi P5484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3145.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P4283.rpgleinc'

dcl-ds T1581 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1581 FROM T1581 LIMIT 1;

theCharVar = 'Hello from P5484';
dsply theCharVar;
callp localProc();
P3145();
P97();
P4283();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5484 in the procedure';
end-proc;