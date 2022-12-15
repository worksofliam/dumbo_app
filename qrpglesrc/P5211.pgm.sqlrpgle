**free

ctl-opt dftactgrp(*no);

dcl-pi P5211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3395.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P4834.rpgleinc'

dcl-ds theTable extname('T1192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1192 LIMIT 1;

theCharVar = 'Hello from P5211';
dsply theCharVar;
callp localProc();
P3395();
P1121();
P4834();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5211 in the procedure';
end-proc;