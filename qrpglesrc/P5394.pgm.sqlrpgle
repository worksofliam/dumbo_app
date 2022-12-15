**free

ctl-opt dftactgrp(*no);

dcl-pi P5394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2204.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P2778.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P5394';
dsply theCharVar;
callp localProc();
P2204();
P1949();
P2778();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5394 in the procedure';
end-proc;