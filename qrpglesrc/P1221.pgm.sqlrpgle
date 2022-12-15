**free

ctl-opt dftactgrp(*no);

dcl-pi P1221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P1221';
dsply theCharVar;
callp localProc();
P132();
P214();
P806();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1221 in the procedure';
end-proc;