**free

ctl-opt dftactgrp(*no);

dcl-pi P1288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P1288';
dsply theCharVar;
callp localProc();
P635();
P98();
P257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1288 in the procedure';
end-proc;