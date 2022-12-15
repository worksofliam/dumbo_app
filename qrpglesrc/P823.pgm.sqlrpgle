**free

ctl-opt dftactgrp(*no);

dcl-pi P823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P648.rpgleinc'

dcl-ds theTable extname('T1470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1470 LIMIT 1;

theCharVar = 'Hello from P823';
dsply theCharVar;
callp localProc();
P28();
P665();
P648();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P823 in the procedure';
end-proc;