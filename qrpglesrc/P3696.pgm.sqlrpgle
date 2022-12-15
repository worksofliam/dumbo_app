**free

ctl-opt dftactgrp(*no);

dcl-pi P3696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1696.rpgleinc'
/copy 'qrpgleref/P1654.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'

dcl-ds theTable extname('T158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T158 LIMIT 1;

theCharVar = 'Hello from P3696';
dsply theCharVar;
callp localProc();
P1696();
P1654();
P742();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3696 in the procedure';
end-proc;