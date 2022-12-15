**free

ctl-opt dftactgrp(*no);

dcl-pi P384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P384';
dsply theCharVar;
callp localProc();
P102();
P123();
P52();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P384 in the procedure';
end-proc;