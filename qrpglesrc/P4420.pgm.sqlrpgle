**free

ctl-opt dftactgrp(*no);

dcl-pi P4420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1589.rpgleinc'
/copy 'qrpgleref/P2912.rpgleinc'
/copy 'qrpgleref/P2660.rpgleinc'

dcl-ds theTable extname('T766') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T766 LIMIT 1;

theCharVar = 'Hello from P4420';
dsply theCharVar;
callp localProc();
P1589();
P2912();
P2660();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4420 in the procedure';
end-proc;