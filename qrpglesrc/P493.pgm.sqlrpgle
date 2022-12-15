**free

ctl-opt dftactgrp(*no);

dcl-pi P493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T731') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T731 LIMIT 1;

theCharVar = 'Hello from P493';
dsply theCharVar;
callp localProc();
P157();
P193();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P493 in the procedure';
end-proc;