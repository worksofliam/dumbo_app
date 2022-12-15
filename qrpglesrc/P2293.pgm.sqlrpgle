**free

ctl-opt dftactgrp(*no);

dcl-pi P2293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P1793.rpgleinc'
/copy 'qrpgleref/P1314.rpgleinc'

dcl-ds theTable extname('T1223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1223 LIMIT 1;

theCharVar = 'Hello from P2293';
dsply theCharVar;
callp localProc();
P703();
P1793();
P1314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2293 in the procedure';
end-proc;