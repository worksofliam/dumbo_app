**free

ctl-opt dftactgrp(*no);

dcl-pi P3552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2685.rpgleinc'
/copy 'qrpgleref/P3199.rpgleinc'
/copy 'qrpgleref/P830.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P3552';
dsply theCharVar;
callp localProc();
P2685();
P3199();
P830();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3552 in the procedure';
end-proc;