**free

ctl-opt dftactgrp(*no);

dcl-pi P2609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2496.rpgleinc'
/copy 'qrpgleref/P1587.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'

dcl-ds theTable extname('T231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T231 LIMIT 1;

theCharVar = 'Hello from P2609';
dsply theCharVar;
callp localProc();
P2496();
P1587();
P562();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2609 in the procedure';
end-proc;