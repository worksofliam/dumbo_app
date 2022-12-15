**free

ctl-opt dftactgrp(*no);

dcl-pi P3093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1386.rpgleinc'
/copy 'qrpgleref/P1311.rpgleinc'
/copy 'qrpgleref/P2625.rpgleinc'

dcl-ds theTable extname('T110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T110 LIMIT 1;

theCharVar = 'Hello from P3093';
dsply theCharVar;
callp localProc();
P1386();
P1311();
P2625();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3093 in the procedure';
end-proc;