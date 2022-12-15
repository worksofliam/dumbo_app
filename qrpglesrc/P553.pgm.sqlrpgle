**free

ctl-opt dftactgrp(*no);

dcl-pi P553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P553';
dsply theCharVar;
callp localProc();
P324();
P37();
P532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P553 in the procedure';
end-proc;