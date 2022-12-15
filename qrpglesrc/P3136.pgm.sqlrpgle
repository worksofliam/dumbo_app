**free

ctl-opt dftactgrp(*no);

dcl-pi P3136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P2603.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds T1141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1141 FROM T1141 LIMIT 1;

theCharVar = 'Hello from P3136';
dsply theCharVar;
callp localProc();
P367();
P2603();
P359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3136 in the procedure';
end-proc;