**free

ctl-opt dftactgrp(*no);

dcl-pi P317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P317';
dsply theCharVar;
callp localProc();
P224();
P147();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P317 in the procedure';
end-proc;