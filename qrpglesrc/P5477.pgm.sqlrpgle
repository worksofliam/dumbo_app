**free

ctl-opt dftactgrp(*no);

dcl-pi P5477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3498.rpgleinc'
/copy 'qrpgleref/P3422.rpgleinc'
/copy 'qrpgleref/P1345.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P5477';
dsply theCharVar;
callp localProc();
P3498();
P3422();
P1345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5477 in the procedure';
end-proc;