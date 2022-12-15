**free

ctl-opt dftactgrp(*no);

dcl-pi P1254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P1254';
dsply theCharVar;
callp localProc();
P1070();
P515();
P887();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1254 in the procedure';
end-proc;