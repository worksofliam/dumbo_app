**free

ctl-opt dftactgrp(*no);

dcl-pi P1277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P1109.rpgleinc'

dcl-ds theTable extname('T103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T103 LIMIT 1;

theCharVar = 'Hello from P1277';
dsply theCharVar;
callp localProc();
P281();
P814();
P1109();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1277 in the procedure';
end-proc;