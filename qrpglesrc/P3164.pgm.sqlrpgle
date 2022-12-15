**free

ctl-opt dftactgrp(*no);

dcl-pi P3164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2949.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P1737.rpgleinc'

dcl-ds theTable extname('T357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T357 LIMIT 1;

theCharVar = 'Hello from P3164';
dsply theCharVar;
callp localProc();
P2949();
P316();
P1737();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3164 in the procedure';
end-proc;