**free

ctl-opt dftactgrp(*no);

dcl-pi P1279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P1178.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T787 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T787 FROM T787 LIMIT 1;

theCharVar = 'Hello from P1279';
dsply theCharVar;
callp localProc();
P398();
P1178();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1279 in the procedure';
end-proc;