**free

ctl-opt dftactgrp(*no);

dcl-pi P3316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P3107.rpgleinc'
/copy 'qrpgleref/P2823.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P3316';
dsply theCharVar;
callp localProc();
P1117();
P3107();
P2823();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3316 in the procedure';
end-proc;