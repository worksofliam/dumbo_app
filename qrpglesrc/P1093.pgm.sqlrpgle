**free

ctl-opt dftactgrp(*no);

dcl-pi P1093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P1093';
dsply theCharVar;
callp localProc();
P464();
P1070();
P696();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1093 in the procedure';
end-proc;