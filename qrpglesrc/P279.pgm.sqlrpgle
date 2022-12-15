**free

ctl-opt dftactgrp(*no);

dcl-pi P279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T888') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T888 LIMIT 1;

theCharVar = 'Hello from P279';
dsply theCharVar;
callp localProc();
P153();
P123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P279 in the procedure';
end-proc;