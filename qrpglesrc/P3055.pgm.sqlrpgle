**free

ctl-opt dftactgrp(*no);

dcl-pi P3055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1256.rpgleinc'
/copy 'qrpgleref/P1761.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'

dcl-ds theTable extname('T968') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T968 LIMIT 1;

theCharVar = 'Hello from P3055';
dsply theCharVar;
callp localProc();
P1256();
P1761();
P829();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3055 in the procedure';
end-proc;