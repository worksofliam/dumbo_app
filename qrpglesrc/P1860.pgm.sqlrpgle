**free

ctl-opt dftactgrp(*no);

dcl-pi P1860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P1860';
dsply theCharVar;
callp localProc();
P752();
P557();
P566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1860 in the procedure';
end-proc;