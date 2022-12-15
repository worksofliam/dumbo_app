**free

ctl-opt dftactgrp(*no);

dcl-pi P1332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds T850 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T850 FROM T850 LIMIT 1;

theCharVar = 'Hello from P1332';
dsply theCharVar;
callp localProc();
P893();
P529();
P410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1332 in the procedure';
end-proc;