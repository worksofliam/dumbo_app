**free

ctl-opt dftactgrp(*no);

dcl-pi P2797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P2158.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P2797';
dsply theCharVar;
callp localProc();
P610();
P2158();
P1423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2797 in the procedure';
end-proc;