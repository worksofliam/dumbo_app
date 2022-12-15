**free

ctl-opt dftactgrp(*no);

dcl-pi P776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'

dcl-ds theTable extname('T52') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T52 LIMIT 1;

theCharVar = 'Hello from P776';
dsply theCharVar;
callp localProc();
P481();
P361();
P267();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P776 in the procedure';
end-proc;