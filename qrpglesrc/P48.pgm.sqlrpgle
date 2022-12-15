**free

ctl-opt dftactgrp(*no);

dcl-pi P48;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P48';
dsply theCharVar;
callp localProc();
P10();
P42();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P48 in the procedure';
end-proc;