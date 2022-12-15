**free

ctl-opt dftactgrp(*no);

dcl-pi P3215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P1094.rpgleinc'
/copy 'qrpgleref/P1806.rpgleinc'

dcl-ds theTable extname('T527') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T527 LIMIT 1;

theCharVar = 'Hello from P3215';
dsply theCharVar;
callp localProc();
P42();
P1094();
P1806();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3215 in the procedure';
end-proc;