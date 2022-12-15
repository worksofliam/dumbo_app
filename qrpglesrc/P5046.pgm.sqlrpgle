**free

ctl-opt dftactgrp(*no);

dcl-pi P5046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1740.rpgleinc'
/copy 'qrpgleref/P1688.rpgleinc'
/copy 'qrpgleref/P2017.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P5046';
dsply theCharVar;
callp localProc();
P1740();
P1688();
P2017();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5046 in the procedure';
end-proc;