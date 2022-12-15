**free

ctl-opt dftactgrp(*no);

dcl-pi P1951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'

dcl-ds theTable extname('T1483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1483 LIMIT 1;

theCharVar = 'Hello from P1951';
dsply theCharVar;
callp localProc();
P796();
P640();
P912();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1951 in the procedure';
end-proc;