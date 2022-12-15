**free

ctl-opt dftactgrp(*no);

dcl-pi P2713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P1661.rpgleinc'
/copy 'qrpgleref/P2634.rpgleinc'

dcl-ds theTable extname('T837') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T837 LIMIT 1;

theCharVar = 'Hello from P2713';
dsply theCharVar;
callp localProc();
P607();
P1661();
P2634();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2713 in the procedure';
end-proc;