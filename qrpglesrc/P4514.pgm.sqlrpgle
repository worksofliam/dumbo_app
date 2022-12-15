**free

ctl-opt dftactgrp(*no);

dcl-pi P4514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2147.rpgleinc'
/copy 'qrpgleref/P3476.rpgleinc'
/copy 'qrpgleref/P3041.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P4514';
dsply theCharVar;
callp localProc();
P2147();
P3476();
P3041();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4514 in the procedure';
end-proc;