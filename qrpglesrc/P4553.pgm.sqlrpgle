**free

ctl-opt dftactgrp(*no);

dcl-pi P4553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P3422.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T1194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1194 LIMIT 1;

theCharVar = 'Hello from P4553';
dsply theCharVar;
callp localProc();
P1166();
P3422();
P290();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4553 in the procedure';
end-proc;