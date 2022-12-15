**free

ctl-opt dftactgrp(*no);

dcl-pi P800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P800';
dsply theCharVar;
callp localProc();
P106();
P375();
P477();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P800 in the procedure';
end-proc;