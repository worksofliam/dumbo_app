**free

ctl-opt dftactgrp(*no);

dcl-pi P3389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1804.rpgleinc'
/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P2905.rpgleinc'

dcl-ds theTable extname('T859') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T859 LIMIT 1;

theCharVar = 'Hello from P3389';
dsply theCharVar;
callp localProc();
P1804();
P1216();
P2905();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3389 in the procedure';
end-proc;