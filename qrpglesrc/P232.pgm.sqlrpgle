**free

ctl-opt dftactgrp(*no);

dcl-pi P232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T728') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T728 LIMIT 1;

theCharVar = 'Hello from P232';
dsply theCharVar;
callp localProc();
P123();
P94();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P232 in the procedure';
end-proc;