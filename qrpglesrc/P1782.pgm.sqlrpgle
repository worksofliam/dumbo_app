**free

ctl-opt dftactgrp(*no);

dcl-pi P1782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P1015.rpgleinc'

dcl-ds theTable extname('T1723') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1723 LIMIT 1;

theCharVar = 'Hello from P1782';
dsply theCharVar;
callp localProc();
P98();
P943();
P1015();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1782 in the procedure';
end-proc;