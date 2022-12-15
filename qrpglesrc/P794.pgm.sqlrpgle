**free

ctl-opt dftactgrp(*no);

dcl-pi P794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'

dcl-ds theTable extname('T872') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T872 LIMIT 1;

theCharVar = 'Hello from P794';
dsply theCharVar;
callp localProc();
P482();
P178();
P267();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P794 in the procedure';
end-proc;