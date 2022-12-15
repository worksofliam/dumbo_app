**free

ctl-opt dftactgrp(*no);

dcl-pi P400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P400';
dsply theCharVar;
callp localProc();
P234();
P321();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P400 in the procedure';
end-proc;