**free

ctl-opt dftactgrp(*no);

dcl-pi P2892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P2704.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'

dcl-ds theTable extname('T159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T159 LIMIT 1;

theCharVar = 'Hello from P2892';
dsply theCharVar;
callp localProc();
P657();
P2704();
P1013();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2892 in the procedure';
end-proc;