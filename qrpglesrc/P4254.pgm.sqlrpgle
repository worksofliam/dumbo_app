**free

ctl-opt dftactgrp(*no);

dcl-pi P4254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1698.rpgleinc'
/copy 'qrpgleref/P2757.rpgleinc'
/copy 'qrpgleref/P3168.rpgleinc'

dcl-ds theTable extname('T1443') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1443 LIMIT 1;

theCharVar = 'Hello from P4254';
dsply theCharVar;
callp localProc();
P1698();
P2757();
P3168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4254 in the procedure';
end-proc;