**free

ctl-opt dftactgrp(*no);

dcl-pi P2662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1124.rpgleinc'
/copy 'qrpgleref/P1412.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds T991 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T991 FROM T991 LIMIT 1;

theCharVar = 'Hello from P2662';
dsply theCharVar;
callp localProc();
P1124();
P1412();
P467();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2662 in the procedure';
end-proc;