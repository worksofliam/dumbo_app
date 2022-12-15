**free

ctl-opt dftactgrp(*no);

dcl-pi P159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'

dcl-ds theTable extname('T570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T570 LIMIT 1;

theCharVar = 'Hello from P159';
dsply theCharVar;
callp localProc();
P77();
P3();
P129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P159 in the procedure';
end-proc;