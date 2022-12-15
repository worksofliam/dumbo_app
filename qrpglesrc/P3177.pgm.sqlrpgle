**free

ctl-opt dftactgrp(*no);

dcl-pi P3177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P3177';
dsply theCharVar;
callp localProc();
P628();
P1189();
P396();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3177 in the procedure';
end-proc;