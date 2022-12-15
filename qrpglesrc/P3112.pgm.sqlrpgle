**free

ctl-opt dftactgrp(*no);

dcl-pi P3112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P1637.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P3112';
dsply theCharVar;
callp localProc();
P398();
P1637();
P359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3112 in the procedure';
end-proc;