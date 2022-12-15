**free

ctl-opt dftactgrp(*no);

dcl-pi P1726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds T1510 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1510 FROM T1510 LIMIT 1;

theCharVar = 'Hello from P1726';
dsply theCharVar;
callp localProc();
P1035();
P100();
P248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1726 in the procedure';
end-proc;