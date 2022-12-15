**free

ctl-opt dftactgrp(*no);

dcl-pi P1394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T818 LIMIT 1;

theCharVar = 'Hello from P1394';
dsply theCharVar;
callp localProc();
P435();
P59();
P728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1394 in the procedure';
end-proc;