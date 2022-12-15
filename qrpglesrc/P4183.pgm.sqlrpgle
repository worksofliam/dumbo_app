**free

ctl-opt dftactgrp(*no);

dcl-pi P4183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P3004.rpgleinc'

dcl-ds theTable extname('T1347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1347 LIMIT 1;

theCharVar = 'Hello from P4183';
dsply theCharVar;
callp localProc();
P861();
P802();
P3004();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4183 in the procedure';
end-proc;