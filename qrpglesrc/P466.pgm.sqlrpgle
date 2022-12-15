**free

ctl-opt dftactgrp(*no);

dcl-pi P466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P466';
dsply theCharVar;
callp localProc();
P412();
P96();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P466 in the procedure';
end-proc;