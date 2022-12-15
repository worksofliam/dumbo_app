**free

ctl-opt dftactgrp(*no);

dcl-pi P5125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4194.rpgleinc'
/copy 'qrpgleref/P3626.rpgleinc'
/copy 'qrpgleref/P2728.rpgleinc'

dcl-ds theTable extname('T1216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1216 LIMIT 1;

theCharVar = 'Hello from P5125';
dsply theCharVar;
callp localProc();
P4194();
P3626();
P2728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5125 in the procedure';
end-proc;