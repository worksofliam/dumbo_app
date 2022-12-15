**free

ctl-opt dftactgrp(*no);

dcl-pi P363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P363';
dsply theCharVar;
callp localProc();
P24();
P59();
P263();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P363 in the procedure';
end-proc;