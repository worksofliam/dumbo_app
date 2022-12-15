**free

ctl-opt dftactgrp(*no);

dcl-pi P780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds theTable extname('T127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T127 LIMIT 1;

theCharVar = 'Hello from P780';
dsply theCharVar;
callp localProc();
P576();
P726();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P780 in the procedure';
end-proc;