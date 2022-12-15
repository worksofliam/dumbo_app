**free

ctl-opt dftactgrp(*no);

dcl-pi P3288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2826.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'

dcl-ds theTable extname('T683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T683 LIMIT 1;

theCharVar = 'Hello from P3288';
dsply theCharVar;
callp localProc();
P2826();
P1026();
P818();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3288 in the procedure';
end-proc;