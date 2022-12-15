**free

ctl-opt dftactgrp(*no);

dcl-pi P110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P110';
dsply theCharVar;
callp localProc();
P92();
P90();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P110 in the procedure';
end-proc;