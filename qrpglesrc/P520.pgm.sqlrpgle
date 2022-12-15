**free

ctl-opt dftactgrp(*no);

dcl-pi P520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T24') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T24 LIMIT 1;

theCharVar = 'Hello from P520';
dsply theCharVar;
callp localProc();
P331();
P438();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P520 in the procedure';
end-proc;