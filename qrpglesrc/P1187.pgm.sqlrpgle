**free

ctl-opt dftactgrp(*no);

dcl-pi P1187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P492.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'

dcl-ds theTable extname('T197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T197 LIMIT 1;

theCharVar = 'Hello from P1187';
dsply theCharVar;
callp localProc();
P492();
P511();
P986();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1187 in the procedure';
end-proc;