**free

ctl-opt dftactgrp(*no);

dcl-pi P5498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2766.rpgleinc'
/copy 'qrpgleref/P5060.rpgleinc'
/copy 'qrpgleref/P2184.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P5498';
dsply theCharVar;
callp localProc();
P2766();
P5060();
P2184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5498 in the procedure';
end-proc;