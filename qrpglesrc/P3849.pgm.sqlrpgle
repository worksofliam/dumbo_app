**free

ctl-opt dftactgrp(*no);

dcl-pi P3849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P2301.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'

dcl-ds theTable extname('T502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T502 LIMIT 1;

theCharVar = 'Hello from P3849';
dsply theCharVar;
callp localProc();
P439();
P2301();
P1024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3849 in the procedure';
end-proc;