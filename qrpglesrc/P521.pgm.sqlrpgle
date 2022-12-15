**free

ctl-opt dftactgrp(*no);

dcl-pi P521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'

dcl-ds theTable extname('T806') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T806 LIMIT 1;

theCharVar = 'Hello from P521';
dsply theCharVar;
callp localProc();
P66();
P123();
P428();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P521 in the procedure';
end-proc;