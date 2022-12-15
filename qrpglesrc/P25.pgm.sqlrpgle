**free

ctl-opt dftactgrp(*no);

dcl-pi P25;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P25';
dsply theCharVar;
callp localProc();
P4();
P7();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P25 in the procedure';
end-proc;