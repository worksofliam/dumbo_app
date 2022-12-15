**free

ctl-opt dftactgrp(*no);

dcl-pi P4723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2158.rpgleinc'
/copy 'qrpgleref/P4642.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P4723';
dsply theCharVar;
callp localProc();
P2158();
P4642();
P1274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4723 in the procedure';
end-proc;