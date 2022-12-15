**free

ctl-opt dftactgrp(*no);

dcl-pi P4046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2834.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds theTable extname('T746') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T746 LIMIT 1;

theCharVar = 'Hello from P4046';
dsply theCharVar;
callp localProc();
P2834();
P1108();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4046 in the procedure';
end-proc;