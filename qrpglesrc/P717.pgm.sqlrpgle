**free

ctl-opt dftactgrp(*no);

dcl-pi P717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P717';
dsply theCharVar;
callp localProc();
P548();
P153();
P210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P717 in the procedure';
end-proc;