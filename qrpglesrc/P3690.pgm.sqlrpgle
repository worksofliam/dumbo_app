**free

ctl-opt dftactgrp(*no);

dcl-pi P3690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2332.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds T1325 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1325 FROM T1325 LIMIT 1;

theCharVar = 'Hello from P3690';
dsply theCharVar;
callp localProc();
P2332();
P984();
P504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3690 in the procedure';
end-proc;