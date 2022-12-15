**free

ctl-opt dftactgrp(*no);

dcl-pi P2197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1488.rpgleinc'
/copy 'qrpgleref/P1094.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P2197';
dsply theCharVar;
callp localProc();
P1488();
P1094();
P302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2197 in the procedure';
end-proc;