**free

ctl-opt dftactgrp(*no);

dcl-pi P3720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'

dcl-ds theTable extname('T303') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T303 LIMIT 1;

theCharVar = 'Hello from P3720';
dsply theCharVar;
callp localProc();
P237();
P1003();
P1676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3720 in the procedure';
end-proc;