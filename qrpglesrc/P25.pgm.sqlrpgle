**free

ctl-opt dftactgrp(*no);

dcl-pi P25;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T175 LIMIT 1;

theCharVar = 'Hello from P25';
dsply theCharVar;
callp localProc();
P23();
P2();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P25 in the procedure';
end-proc;