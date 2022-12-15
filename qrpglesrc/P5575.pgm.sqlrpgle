**free

ctl-opt dftactgrp(*no);

dcl-pi P5575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P4571.rpgleinc'

dcl-ds theTable extname('T23') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T23 LIMIT 1;

theCharVar = 'Hello from P5575';
dsply theCharVar;
callp localProc();
P81();
P458();
P4571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5575 in the procedure';
end-proc;