**free

ctl-opt dftactgrp(*no);

dcl-pi P301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P301';
dsply theCharVar;
callp localProc();
P103();
P124();
P131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P301 in the procedure';
end-proc;