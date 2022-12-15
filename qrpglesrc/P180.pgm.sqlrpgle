**free

ctl-opt dftactgrp(*no);

dcl-pi P180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P180';
dsply theCharVar;
callp localProc();
P81();
P157();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P180 in the procedure';
end-proc;