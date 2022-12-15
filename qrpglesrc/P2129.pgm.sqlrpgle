**free

ctl-opt dftactgrp(*no);

dcl-pi P2129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P1382.rpgleinc'

dcl-ds theTable extname('T779') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T779 LIMIT 1;

theCharVar = 'Hello from P2129';
dsply theCharVar;
callp localProc();
P586();
P743();
P1382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2129 in the procedure';
end-proc;