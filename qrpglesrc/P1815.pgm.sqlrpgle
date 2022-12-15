**free

ctl-opt dftactgrp(*no);

dcl-pi P1815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1519.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'

dcl-ds T1130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1130 FROM T1130 LIMIT 1;

theCharVar = 'Hello from P1815';
dsply theCharVar;
callp localProc();
P1519();
P722();
P1126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1815 in the procedure';
end-proc;