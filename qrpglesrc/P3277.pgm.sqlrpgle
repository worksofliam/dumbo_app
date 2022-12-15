**free

ctl-opt dftactgrp(*no);

dcl-pi P3277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1033.rpgleinc'
/copy 'qrpgleref/P2170.rpgleinc'
/copy 'qrpgleref/P3060.rpgleinc'

dcl-ds theTable extname('T885') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T885 LIMIT 1;

theCharVar = 'Hello from P3277';
dsply theCharVar;
callp localProc();
P1033();
P2170();
P3060();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3277 in the procedure';
end-proc;