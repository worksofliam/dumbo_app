**free

ctl-opt dftactgrp(*no);

dcl-pi P363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds theTable extname('T131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T131 LIMIT 1;

theCharVar = 'Hello from P363';
dsply theCharVar;
callp localProc();
P18();
P353();
P156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P363 in the procedure';
end-proc;