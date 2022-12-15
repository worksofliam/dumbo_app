**free

ctl-opt dftactgrp(*no);

dcl-pi P742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'

dcl-ds theTable extname('T823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T823 LIMIT 1;

theCharVar = 'Hello from P742';
dsply theCharVar;
callp localProc();
P523();
P600();
P428();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P742 in the procedure';
end-proc;