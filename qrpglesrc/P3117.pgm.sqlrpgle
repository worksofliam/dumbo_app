**free

ctl-opt dftactgrp(*no);

dcl-pi P3117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1864.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P2614.rpgleinc'

dcl-ds theTable extname('T1702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1702 LIMIT 1;

theCharVar = 'Hello from P3117';
dsply theCharVar;
callp localProc();
P1864();
P305();
P2614();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3117 in the procedure';
end-proc;