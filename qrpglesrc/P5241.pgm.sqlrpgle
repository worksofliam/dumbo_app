**free

ctl-opt dftactgrp(*no);

dcl-pi P5241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'
/copy 'qrpgleref/P4546.rpgleinc'

dcl-ds theTable extname('T1101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1101 LIMIT 1;

theCharVar = 'Hello from P5241';
dsply theCharVar;
callp localProc();
P110();
P2054();
P4546();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5241 in the procedure';
end-proc;