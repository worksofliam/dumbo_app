**free

ctl-opt dftactgrp(*no);

dcl-pi P2045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T1325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1325 LIMIT 1;

theCharVar = 'Hello from P2045';
dsply theCharVar;
callp localProc();
P407();
P887();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2045 in the procedure';
end-proc;