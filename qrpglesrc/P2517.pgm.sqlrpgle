**free

ctl-opt dftactgrp(*no);

dcl-pi P2517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P1950.rpgleinc'
/copy 'qrpgleref/P1510.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P2517';
dsply theCharVar;
callp localProc();
P648();
P1950();
P1510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2517 in the procedure';
end-proc;