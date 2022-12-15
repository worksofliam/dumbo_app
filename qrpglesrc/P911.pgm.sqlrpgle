**free

ctl-opt dftactgrp(*no);

dcl-pi P911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P911';
dsply theCharVar;
callp localProc();
P290();
P362();
P474();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P911 in the procedure';
end-proc;