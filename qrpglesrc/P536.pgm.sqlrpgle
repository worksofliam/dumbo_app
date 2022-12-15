**free

ctl-opt dftactgrp(*no);

dcl-pi P536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T731') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T731 LIMIT 1;

theCharVar = 'Hello from P536';
dsply theCharVar;
callp localProc();
P46();
P419();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P536 in the procedure';
end-proc;