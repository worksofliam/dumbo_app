**free

ctl-opt dftactgrp(*no);

dcl-pi P3151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2388.rpgleinc'
/copy 'qrpgleref/P2048.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P3151';
dsply theCharVar;
callp localProc();
P2388();
P2048();
P2070();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3151 in the procedure';
end-proc;