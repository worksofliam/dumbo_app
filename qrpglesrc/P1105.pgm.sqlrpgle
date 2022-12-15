**free

ctl-opt dftactgrp(*no);

dcl-pi P1105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P1105';
dsply theCharVar;
callp localProc();
P324();
P1055();
P340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1105 in the procedure';
end-proc;