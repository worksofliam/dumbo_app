**free

ctl-opt dftactgrp(*no);

dcl-pi P2767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2146.rpgleinc'
/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P2767';
dsply theCharVar;
callp localProc();
P2146();
P2125();
P930();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2767 in the procedure';
end-proc;