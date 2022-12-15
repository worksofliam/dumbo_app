**free

ctl-opt dftactgrp(*no);

dcl-pi P275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P275';
dsply theCharVar;
callp localProc();
P174();
P198();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P275 in the procedure';
end-proc;