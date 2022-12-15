**free

ctl-opt dftactgrp(*no);

dcl-pi P4063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2639.rpgleinc'
/copy 'qrpgleref/P3169.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds theTable extname('T1264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1264 LIMIT 1;

theCharVar = 'Hello from P4063';
dsply theCharVar;
callp localProc();
P2639();
P3169();
P584();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4063 in the procedure';
end-proc;