**free

ctl-opt dftactgrp(*no);

dcl-pi P2434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'

dcl-ds theTable extname('T1187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1187 LIMIT 1;

theCharVar = 'Hello from P2434';
dsply theCharVar;
callp localProc();
P37();
P1259();
P864();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2434 in the procedure';
end-proc;