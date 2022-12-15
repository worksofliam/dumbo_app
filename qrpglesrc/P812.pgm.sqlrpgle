**free

ctl-opt dftactgrp(*no);

dcl-pi P812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P812';
dsply theCharVar;
callp localProc();
P796();
P806();
P722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P812 in the procedure';
end-proc;