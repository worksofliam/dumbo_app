**free

ctl-opt dftactgrp(*no);

dcl-pi P3506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2742.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds theTable extname('T493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T493 LIMIT 1;

theCharVar = 'Hello from P3506';
dsply theCharVar;
callp localProc();
P2742();
P2070();
P361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3506 in the procedure';
end-proc;