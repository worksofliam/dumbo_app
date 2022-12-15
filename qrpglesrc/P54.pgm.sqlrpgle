**free

ctl-opt dftactgrp(*no);

dcl-pi P54;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T76') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T76 LIMIT 1;

theCharVar = 'Hello from P54';
dsply theCharVar;
callp localProc();
P46();
P48();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P54 in the procedure';
end-proc;