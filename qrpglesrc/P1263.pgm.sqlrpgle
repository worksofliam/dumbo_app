**free

ctl-opt dftactgrp(*no);

dcl-pi P1263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P1263';
dsply theCharVar;
callp localProc();
P554();
P525();
P1146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1263 in the procedure';
end-proc;