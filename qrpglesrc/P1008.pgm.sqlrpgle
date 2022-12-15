**free

ctl-opt dftactgrp(*no);

dcl-pi P1008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds theTable extname('T1782') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1782 LIMIT 1;

theCharVar = 'Hello from P1008';
dsply theCharVar;
callp localProc();
P174();
P617();
P360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1008 in the procedure';
end-proc;