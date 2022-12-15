**free

ctl-opt dftactgrp(*no);

dcl-pi P2336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1455.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'

dcl-ds theTable extname('T1057') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1057 LIMIT 1;

theCharVar = 'Hello from P2336';
dsply theCharVar;
callp localProc();
P1455();
P380();
P423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2336 in the procedure';
end-proc;