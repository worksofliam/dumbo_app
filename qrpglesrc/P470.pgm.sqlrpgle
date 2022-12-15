**free

ctl-opt dftactgrp(*no);

dcl-pi P470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds theTable extname('T293') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T293 LIMIT 1;

theCharVar = 'Hello from P470';
dsply theCharVar;
callp localProc();
P451();
P145();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P470 in the procedure';
end-proc;