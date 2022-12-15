**free

ctl-opt dftactgrp(*no);

dcl-pi P1411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1128.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds theTable extname('T415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T415 LIMIT 1;

theCharVar = 'Hello from P1411';
dsply theCharVar;
callp localProc();
P1128();
P463();
P410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1411 in the procedure';
end-proc;