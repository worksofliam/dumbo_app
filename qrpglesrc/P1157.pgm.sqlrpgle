**free

ctl-opt dftactgrp(*no);

dcl-pi P1157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'

dcl-ds theTable extname('T1824') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1824 LIMIT 1;

theCharVar = 'Hello from P1157';
dsply theCharVar;
callp localProc();
P789();
P178();
P482();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1157 in the procedure';
end-proc;