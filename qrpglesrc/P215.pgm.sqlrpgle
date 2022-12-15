**free

ctl-opt dftactgrp(*no);

dcl-pi P215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T825 LIMIT 1;

theCharVar = 'Hello from P215';
dsply theCharVar;
callp localProc();
P108();
P172();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P215 in the procedure';
end-proc;