**free

ctl-opt dftactgrp(*no);

dcl-pi P1714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P1532.rpgleinc'
/copy 'qrpgleref/P1224.rpgleinc'

dcl-ds T1039 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1039 FROM T1039 LIMIT 1;

theCharVar = 'Hello from P1714';
dsply theCharVar;
callp localProc();
P667();
P1532();
P1224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1714 in the procedure';
end-proc;