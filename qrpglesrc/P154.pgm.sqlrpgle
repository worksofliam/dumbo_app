**free

ctl-opt dftactgrp(*no);

dcl-pi P154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P154';
dsply theCharVar;
callp localProc();
P121();
P79();
P152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P154 in the procedure';
end-proc;