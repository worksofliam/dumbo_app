**free

ctl-opt dftactgrp(*no);

dcl-pi P1329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P1329';
dsply theCharVar;
callp localProc();
P1108();
P826();
P466();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1329 in the procedure';
end-proc;