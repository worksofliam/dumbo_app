**free

ctl-opt dftactgrp(*no);

dcl-pi P558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P558';
dsply theCharVar;
callp localProc();
P176();
P207();
P346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P558 in the procedure';
end-proc;