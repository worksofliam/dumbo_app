**free

ctl-opt dftactgrp(*no);

dcl-pi P3345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3083.rpgleinc'
/copy 'qrpgleref/P2978.rpgleinc'
/copy 'qrpgleref/P727.rpgleinc'

dcl-ds theTable extname('T930') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T930 LIMIT 1;

theCharVar = 'Hello from P3345';
dsply theCharVar;
callp localProc();
P3083();
P2978();
P727();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3345 in the procedure';
end-proc;