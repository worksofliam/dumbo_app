**free

ctl-opt dftactgrp(*no);

dcl-pi P1129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P688.rpgleinc'

dcl-ds theTable extname('T1751') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1751 LIMIT 1;

theCharVar = 'Hello from P1129';
dsply theCharVar;
callp localProc();
P272();
P609();
P688();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1129 in the procedure';
end-proc;