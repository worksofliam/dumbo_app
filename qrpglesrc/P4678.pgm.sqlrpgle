**free

ctl-opt dftactgrp(*no);

dcl-pi P4678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4132.rpgleinc'
/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P4589.rpgleinc'

dcl-ds theTable extname('T1307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1307 LIMIT 1;

theCharVar = 'Hello from P4678';
dsply theCharVar;
callp localProc();
P4132();
P1504();
P4589();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4678 in the procedure';
end-proc;