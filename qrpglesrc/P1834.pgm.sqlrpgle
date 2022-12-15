**free

ctl-opt dftactgrp(*no);

dcl-pi P1834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P959.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'

dcl-ds T946 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T946 FROM T946 LIMIT 1;

theCharVar = 'Hello from P1834';
dsply theCharVar;
callp localProc();
P959();
P398();
P800();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1834 in the procedure';
end-proc;