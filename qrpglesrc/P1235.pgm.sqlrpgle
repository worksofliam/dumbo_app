**free

ctl-opt dftactgrp(*no);

dcl-pi P1235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'

dcl-ds theTable extname('T1232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1232 LIMIT 1;

theCharVar = 'Hello from P1235';
dsply theCharVar;
callp localProc();
P602();
P601();
P1103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1235 in the procedure';
end-proc;