**free

ctl-opt dftactgrp(*no);

dcl-pi P5028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P4897.rpgleinc'
/copy 'qrpgleref/P3545.rpgleinc'

dcl-ds theTable extname('T1079') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1079 LIMIT 1;

theCharVar = 'Hello from P5028';
dsply theCharVar;
callp localProc();
P1506();
P4897();
P3545();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5028 in the procedure';
end-proc;