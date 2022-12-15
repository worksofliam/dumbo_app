**free

ctl-opt dftactgrp(*no);

dcl-pi P504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T728') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T728 LIMIT 1;

theCharVar = 'Hello from P504';
dsply theCharVar;
callp localProc();
P301();
P200();
P340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P504 in the procedure';
end-proc;