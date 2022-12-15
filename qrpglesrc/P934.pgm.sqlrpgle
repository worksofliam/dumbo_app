**free

ctl-opt dftactgrp(*no);

dcl-pi P934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P934';
dsply theCharVar;
callp localProc();
P665();
P712();
P424();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P934 in the procedure';
end-proc;