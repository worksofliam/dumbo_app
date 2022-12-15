**free

ctl-opt dftactgrp(*no);

dcl-pi P892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P892';
dsply theCharVar;
callp localProc();
P110();
P242();
P151();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P892 in the procedure';
end-proc;