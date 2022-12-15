**free

ctl-opt dftactgrp(*no);

dcl-pi P2253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds theTable extname('T1260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1260 LIMIT 1;

theCharVar = 'Hello from P2253';
dsply theCharVar;
callp localProc();
P927();
P910();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2253 in the procedure';
end-proc;