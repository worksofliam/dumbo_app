**free

ctl-opt dftactgrp(*no);

dcl-pi P855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P855';
dsply theCharVar;
callp localProc();
P286();
P513();
P184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P855 in the procedure';
end-proc;