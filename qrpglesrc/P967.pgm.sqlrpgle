**free

ctl-opt dftactgrp(*no);

dcl-pi P967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T689 LIMIT 1;

theCharVar = 'Hello from P967';
dsply theCharVar;
callp localProc();
P588();
P401();
P213();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P967 in the procedure';
end-proc;