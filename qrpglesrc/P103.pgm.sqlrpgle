**free

ctl-opt dftactgrp(*no);

dcl-pi P103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T115 LIMIT 1;

theCharVar = 'Hello from P103';
dsply theCharVar;
callp localProc();
P14();
P31();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P103 in the procedure';
end-proc;