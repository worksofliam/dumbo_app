**free

ctl-opt dftactgrp(*no);

dcl-pi P4491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1974.rpgleinc'
/copy 'qrpgleref/P4138.rpgleinc'
/copy 'qrpgleref/P3557.rpgleinc'

dcl-ds T1570 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1570 FROM T1570 LIMIT 1;

theCharVar = 'Hello from P4491';
dsply theCharVar;
callp localProc();
P1974();
P4138();
P3557();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4491 in the procedure';
end-proc;