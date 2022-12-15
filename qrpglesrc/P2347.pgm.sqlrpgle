**free

ctl-opt dftactgrp(*no);

dcl-pi P2347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2169.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P2347';
dsply theCharVar;
callp localProc();
P2169();
P990();
P384();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2347 in the procedure';
end-proc;