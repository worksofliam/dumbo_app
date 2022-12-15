**free

ctl-opt dftactgrp(*no);

dcl-pi P692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P692';
dsply theCharVar;
callp localProc();
P656();
P572();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P692 in the procedure';
end-proc;