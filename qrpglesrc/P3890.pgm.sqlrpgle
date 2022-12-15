**free

ctl-opt dftactgrp(*no);

dcl-pi P3890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2841.rpgleinc'
/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P2528.rpgleinc'

dcl-ds theTable extname('T1687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1687 LIMIT 1;

theCharVar = 'Hello from P3890';
dsply theCharVar;
callp localProc();
P2841();
P1188();
P2528();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3890 in the procedure';
end-proc;