**free

ctl-opt dftactgrp(*no);

dcl-pi P3064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P1912.rpgleinc'
/copy 'qrpgleref/P2800.rpgleinc'

dcl-ds T1855 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1855 FROM T1855 LIMIT 1;

theCharVar = 'Hello from P3064';
dsply theCharVar;
callp localProc();
P400();
P1912();
P2800();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3064 in the procedure';
end-proc;