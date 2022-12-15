**free

ctl-opt dftactgrp(*no);

dcl-pi P189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds theTable extname('T919') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T919 LIMIT 1;

theCharVar = 'Hello from P189';
dsply theCharVar;
callp localProc();
P82();
P104();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P189 in the procedure';
end-proc;