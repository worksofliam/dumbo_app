**free

ctl-opt dftactgrp(*no);

dcl-pi P1781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P1781';
dsply theCharVar;
callp localProc();
P461();
P567();
P1469();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1781 in the procedure';
end-proc;