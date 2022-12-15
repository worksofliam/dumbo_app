**free

ctl-opt dftactgrp(*no);

dcl-pi P847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T509 LIMIT 1;

theCharVar = 'Hello from P847';
dsply theCharVar;
callp localProc();
P665();
P772();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P847 in the procedure';
end-proc;