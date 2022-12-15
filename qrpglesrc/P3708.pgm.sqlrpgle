**free

ctl-opt dftactgrp(*no);

dcl-pi P3708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P2860.rpgleinc'
/copy 'qrpgleref/P1659.rpgleinc'

dcl-ds theTable extname('T244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T244 LIMIT 1;

theCharVar = 'Hello from P3708';
dsply theCharVar;
callp localProc();
P756();
P2860();
P1659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3708 in the procedure';
end-proc;