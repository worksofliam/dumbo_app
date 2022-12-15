**free

ctl-opt dftactgrp(*no);

dcl-pi P4842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4304.rpgleinc'
/copy 'qrpgleref/P2771.rpgleinc'
/copy 'qrpgleref/P3028.rpgleinc'

dcl-ds theTable extname('T1415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1415 LIMIT 1;

theCharVar = 'Hello from P4842';
dsply theCharVar;
callp localProc();
P4304();
P2771();
P3028();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4842 in the procedure';
end-proc;