**free

ctl-opt dftactgrp(*no);

dcl-pi P412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds theTable extname('T116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T116 LIMIT 1;

theCharVar = 'Hello from P412';
dsply theCharVar;
callp localProc();
P252();
P377();
P111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P412 in the procedure';
end-proc;