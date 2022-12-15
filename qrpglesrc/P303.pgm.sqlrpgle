**free

ctl-opt dftactgrp(*no);

dcl-pi P303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T284 LIMIT 1;

theCharVar = 'Hello from P303';
dsply theCharVar;
callp localProc();
P53();
P54();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P303 in the procedure';
end-proc;