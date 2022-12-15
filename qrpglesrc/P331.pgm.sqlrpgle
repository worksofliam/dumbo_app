**free

ctl-opt dftactgrp(*no);

dcl-pi P331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds theTable extname('T1720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1720 LIMIT 1;

theCharVar = 'Hello from P331';
dsply theCharVar;
callp localProc();
P176();
P317();
P75();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P331 in the procedure';
end-proc;