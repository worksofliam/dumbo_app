**free

ctl-opt dftactgrp(*no);

dcl-pi P4315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3372.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P4112.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P4315';
dsply theCharVar;
callp localProc();
P3372();
P1104();
P4112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4315 in the procedure';
end-proc;