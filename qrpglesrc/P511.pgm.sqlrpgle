**free

ctl-opt dftactgrp(*no);

dcl-pi P511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T40') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T40 LIMIT 1;

theCharVar = 'Hello from P511';
dsply theCharVar;
callp localProc();
P321();
P428();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P511 in the procedure';
end-proc;