**free

ctl-opt dftactgrp(*no);

dcl-pi P4335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3118.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P2971.rpgleinc'

dcl-ds theTable extname('T1158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1158 LIMIT 1;

theCharVar = 'Hello from P4335';
dsply theCharVar;
callp localProc();
P3118();
P1103();
P2971();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4335 in the procedure';
end-proc;