**free

ctl-opt dftactgrp(*no);

dcl-pi P2057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P2057';
dsply theCharVar;
callp localProc();
P373();
P419();
P1174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2057 in the procedure';
end-proc;