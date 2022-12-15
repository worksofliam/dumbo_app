**free

ctl-opt dftactgrp(*no);

dcl-pi P577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds theTable extname('T18') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T18 LIMIT 1;

theCharVar = 'Hello from P577';
dsply theCharVar;
callp localProc();
P482();
P335();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P577 in the procedure';
end-proc;