**free

ctl-opt dftactgrp(*no);

dcl-pi P824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'

dcl-ds theTable extname('T1008') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1008 LIMIT 1;

theCharVar = 'Hello from P824';
dsply theCharVar;
callp localProc();
P365();
P404();
P318();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P824 in the procedure';
end-proc;