**free

ctl-opt dftactgrp(*no);

dcl-pi P2970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1909.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'
/copy 'qrpgleref/P1807.rpgleinc'

dcl-ds theTable extname('T865') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T865 LIMIT 1;

theCharVar = 'Hello from P2970';
dsply theCharVar;
callp localProc();
P1909();
P1324();
P1807();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2970 in the procedure';
end-proc;