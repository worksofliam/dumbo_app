**free

ctl-opt dftactgrp(*no);

dcl-pi P4526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3181.rpgleinc'
/copy 'qrpgleref/P3209.rpgleinc'
/copy 'qrpgleref/P3849.rpgleinc'

dcl-ds theTable extname('T622') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T622 LIMIT 1;

theCharVar = 'Hello from P4526';
dsply theCharVar;
callp localProc();
P3181();
P3209();
P3849();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4526 in the procedure';
end-proc;