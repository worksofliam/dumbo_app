**free

ctl-opt dftactgrp(*no);

dcl-pi P872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'

dcl-ds theTable extname('T473') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T473 LIMIT 1;

theCharVar = 'Hello from P872';
dsply theCharVar;
callp localProc();
P85();
P261();
P286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P872 in the procedure';
end-proc;