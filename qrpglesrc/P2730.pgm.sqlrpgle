**free

ctl-opt dftactgrp(*no);

dcl-pi P2730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'

dcl-ds theTable extname('T552') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T552 LIMIT 1;

theCharVar = 'Hello from P2730';
dsply theCharVar;
callp localProc();
P85();
P777();
P1286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2730 in the procedure';
end-proc;