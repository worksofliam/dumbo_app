**free

ctl-opt dftactgrp(*no);

dcl-pi P2522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P874.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P1451.rpgleinc'

dcl-ds theTable extname('T328') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T328 LIMIT 1;

theCharVar = 'Hello from P2522';
dsply theCharVar;
callp localProc();
P874();
P635();
P1451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2522 in the procedure';
end-proc;