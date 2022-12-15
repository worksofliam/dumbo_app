**free

ctl-opt dftactgrp(*no);

dcl-pi P3795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P3696.rpgleinc'
/copy 'qrpgleref/P2194.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P3795';
dsply theCharVar;
callp localProc();
P299();
P3696();
P2194();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3795 in the procedure';
end-proc;