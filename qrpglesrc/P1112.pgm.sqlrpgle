**free

ctl-opt dftactgrp(*no);

dcl-pi P1112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T634') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T634 LIMIT 1;

theCharVar = 'Hello from P1112';
dsply theCharVar;
callp localProc();
P729();
P399();
P184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1112 in the procedure';
end-proc;