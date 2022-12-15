**free

ctl-opt dftactgrp(*no);

dcl-pi P3507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2553.rpgleinc'
/copy 'qrpgleref/P2272.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'

dcl-ds theTable extname('T1376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1376 LIMIT 1;

theCharVar = 'Hello from P3507';
dsply theCharVar;
callp localProc();
P2553();
P2272();
P1139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3507 in the procedure';
end-proc;