**free

ctl-opt dftactgrp(*no);

dcl-pi P64;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T442') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T442 LIMIT 1;

theCharVar = 'Hello from P64';
dsply theCharVar;
callp localProc();
P32();
P34();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P64 in the procedure';
end-proc;