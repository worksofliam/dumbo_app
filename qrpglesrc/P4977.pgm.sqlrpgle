**free

ctl-opt dftactgrp(*no);

dcl-pi P4977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4621.rpgleinc'
/copy 'qrpgleref/P2220.rpgleinc'
/copy 'qrpgleref/P689.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P4977';
dsply theCharVar;
callp localProc();
P4621();
P2220();
P689();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4977 in the procedure';
end-proc;