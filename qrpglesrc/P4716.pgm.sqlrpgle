**free

ctl-opt dftactgrp(*no);

dcl-pi P4716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4220.rpgleinc'
/copy 'qrpgleref/P3741.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P4716';
dsply theCharVar;
callp localProc();
P4220();
P3741();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4716 in the procedure';
end-proc;