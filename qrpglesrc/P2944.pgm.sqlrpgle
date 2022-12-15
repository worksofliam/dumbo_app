**free

ctl-opt dftactgrp(*no);

dcl-pi P2944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P2166.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'

dcl-ds theTable extname('T1775') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1775 LIMIT 1;

theCharVar = 'Hello from P2944';
dsply theCharVar;
callp localProc();
P183();
P2166();
P2300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2944 in the procedure';
end-proc;