**free

ctl-opt dftactgrp(*no);

dcl-pi P2486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1141.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P2486';
dsply theCharVar;
callp localProc();
P1141();
P158();
P1175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2486 in the procedure';
end-proc;