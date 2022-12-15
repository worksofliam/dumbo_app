**free

ctl-opt dftactgrp(*no);

dcl-pi P5193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3842.rpgleinc'
/copy 'qrpgleref/P4900.rpgleinc'
/copy 'qrpgleref/P3321.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P5193';
dsply theCharVar;
callp localProc();
P3842();
P4900();
P3321();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5193 in the procedure';
end-proc;