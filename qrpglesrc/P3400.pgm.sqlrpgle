**free

ctl-opt dftactgrp(*no);

dcl-pi P3400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P3400';
dsply theCharVar;
callp localProc();
P478();
P2024();
P1144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3400 in the procedure';
end-proc;