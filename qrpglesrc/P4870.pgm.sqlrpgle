**free

ctl-opt dftactgrp(*no);

dcl-pi P4870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2858.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P4870';
dsply theCharVar;
callp localProc();
P2858();
P2431();
P412();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4870 in the procedure';
end-proc;