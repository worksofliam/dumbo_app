**free

ctl-opt dftactgrp(*no);

dcl-pi P392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T1816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1816 LIMIT 1;

theCharVar = 'Hello from P392';
dsply theCharVar;
callp localProc();
P90();
P59();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P392 in the procedure';
end-proc;