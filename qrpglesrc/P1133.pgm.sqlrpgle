**free

ctl-opt dftactgrp(*no);

dcl-pi P1133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P1133';
dsply theCharVar;
callp localProc();
P390();
P585();
P541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1133 in the procedure';
end-proc;