**free

ctl-opt dftactgrp(*no);

dcl-pi P25;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P25';
dsply theCharVar;
callp localProc();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P25 in the procedure';
end-proc;