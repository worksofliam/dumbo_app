**free

ctl-opt dftactgrp(*no);

dcl-pi P583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'

dcl-ds theTable extname('T321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T321 LIMIT 1;

theCharVar = 'Hello from P583';
dsply theCharVar;
callp localProc();
P325();
P116();
P151();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P583 in the procedure';
end-proc;