**free

ctl-opt dftactgrp(*no);

dcl-pi P4044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1406.rpgleinc'
/copy 'qrpgleref/P3040.rpgleinc'
/copy 'qrpgleref/P2930.rpgleinc'

dcl-ds theTable extname('T729') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T729 LIMIT 1;

theCharVar = 'Hello from P4044';
dsply theCharVar;
callp localProc();
P1406();
P3040();
P2930();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4044 in the procedure';
end-proc;