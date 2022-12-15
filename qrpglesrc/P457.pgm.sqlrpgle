**free

ctl-opt dftactgrp(*no);

dcl-pi P457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P457';
dsply theCharVar;
callp localProc();
P185();
P170();
P439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P457 in the procedure';
end-proc;