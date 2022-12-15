**free

ctl-opt dftactgrp(*no);

dcl-pi P1169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds theTable extname('T966') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T966 LIMIT 1;

theCharVar = 'Hello from P1169';
dsply theCharVar;
callp localProc();
P482();
P984();
P308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1169 in the procedure';
end-proc;