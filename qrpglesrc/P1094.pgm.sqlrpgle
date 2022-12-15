**free

ctl-opt dftactgrp(*no);

dcl-pi P1094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'

dcl-ds theTable extname('T771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T771 LIMIT 1;

theCharVar = 'Hello from P1094';
dsply theCharVar;
callp localProc();
P807();
P269();
P764();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1094 in the procedure';
end-proc;