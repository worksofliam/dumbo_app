**free

ctl-opt dftactgrp(*no);

dcl-pi P2450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P2430.rpgleinc'
/copy 'qrpgleref/P1588.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P2450';
dsply theCharVar;
callp localProc();
P219();
P2430();
P1588();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2450 in the procedure';
end-proc;