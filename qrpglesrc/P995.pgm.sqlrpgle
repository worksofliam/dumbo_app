**free

ctl-opt dftactgrp(*no);

dcl-pi P995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'

dcl-ds theTable extname('T910') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T910 LIMIT 1;

theCharVar = 'Hello from P995';
dsply theCharVar;
callp localProc();
P672();
P554();
P508();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P995 in the procedure';
end-proc;