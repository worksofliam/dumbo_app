**free

ctl-opt dftactgrp(*no);

dcl-pi P692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P692';
dsply theCharVar;
callp localProc();
P547();
P599();
P371();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P692 in the procedure';
end-proc;