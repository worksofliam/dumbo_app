**free

ctl-opt dftactgrp(*no);

dcl-pi P4460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2452.rpgleinc'
/copy 'qrpgleref/P3092.rpgleinc'
/copy 'qrpgleref/P1426.rpgleinc'

dcl-ds T1082 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1082 FROM T1082 LIMIT 1;

theCharVar = 'Hello from P4460';
dsply theCharVar;
callp localProc();
P2452();
P3092();
P1426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4460 in the procedure';
end-proc;