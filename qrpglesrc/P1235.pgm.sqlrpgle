**free

ctl-opt dftactgrp(*no);

dcl-pi P1235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P1128.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P1235';
dsply theCharVar;
callp localProc();
P687();
P1128();
P362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1235 in the procedure';
end-proc;