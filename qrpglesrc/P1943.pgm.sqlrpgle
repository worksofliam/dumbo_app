**free

ctl-opt dftactgrp(*no);

dcl-pi P1943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P942.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds theTable extname('T654') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T654 LIMIT 1;

theCharVar = 'Hello from P1943';
dsply theCharVar;
callp localProc();
P942();
P797();
P292();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1943 in the procedure';
end-proc;