**free

ctl-opt dftactgrp(*no);

dcl-pi P638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'

dcl-ds theTable extname('T1450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1450 LIMIT 1;

theCharVar = 'Hello from P638';
dsply theCharVar;
callp localProc();
P317();
P360();
P549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P638 in the procedure';
end-proc;