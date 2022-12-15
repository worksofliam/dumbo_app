**free

ctl-opt dftactgrp(*no);

dcl-pi P4486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3871.rpgleinc'
/copy 'qrpgleref/P1265.rpgleinc'
/copy 'qrpgleref/P4368.rpgleinc'

dcl-ds theTable extname('T1271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1271 LIMIT 1;

theCharVar = 'Hello from P4486';
dsply theCharVar;
callp localProc();
P3871();
P1265();
P4368();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4486 in the procedure';
end-proc;